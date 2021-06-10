import Flutter
import UIKit

enum ChannelName {
  static let TDLIB_CHANNEL_NAME = "channel/to/tdlib" // dart -> native -> tdlib -> native -> dart
  static let TDLIB_RECEIVE_CHANNEL_NAME = "channel/to/tdlib/receive" // tdlib -> native -> dart
}

public class SwiftTdlibPlugin: NSObject, FlutterPlugin, FlutterStreamHandler {
  private var eventClients: [EventClient] = [];
  private var lastEventClient: EventClient?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let messenger = registrar.messenger()
    let methodChannel = FlutterMethodChannel(name: ChannelName.TDLIB_CHANNEL_NAME, binaryMessenger: messenger)
    let instance = SwiftTdlibPlugin()
    registrar.addMethodCallDelegate(instance, channel: methodChannel)
    let eventChannel = FlutterEventChannel(name: ChannelName.TDLIB_RECEIVE_CHANNEL_NAME, binaryMessenger: messenger)
    eventChannel.setStreamHandler(instance)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch (call.method) {
      case "clientCreate":
        result(JsonClient.create())
      case "clientSend":
        let args = call.arguments as! [String : Any]
        JsonClient.send(clientId: args["client"] as! Int, request: args["query"] as! String)
        result(nil)
      case "clientReceive":
        let args = call.arguments as! [String : Any]
        let res = JsonClient.receive(clientId: args["client"] as! Int, timeout: args["timeout"] as! Double)
        result(res)
      case "clientExecute":
        let args = call.arguments as! [String : Any]
        let res = JsonClient.execute(clientId: args["client"] as! Int, request: args["query"] as! String)
        result(res)
      case "clientDestroy":
        let args = call.arguments as! [String : Any]
        let clientId  = args["client"] as! Int
        removeClientFromList(clientId: clientId)
        result(nil)
      default:
        result(FlutterMethodNotImplemented)
    }
  }

  private func removeClientFromList(clientId: Int) {
    for (i, client) in eventClients.enumerated() {
      if client.clientId == clientId {
        client.close()
        eventClients.remove(at: i)
        break
      }
    }
  }

  public func onListen(withArguments arguments: Any?,
                       eventSink: @escaping FlutterEventSink) -> FlutterError? {
    let clientId = arguments as! Int
    for client in self.eventClients {
      if client.clientId == clientId {
        let e = FlutterError(code: "UNAVAILABLE",
          message: "This Client Already is being listened to " + String(clientId),
          details: nil)
        client.error(e: e)
        return nil
      }
    }
    let client = EventClient.init(clientId: clientId, eventSink: eventSink)
    self.eventClients.append(client)
    lastEventClient = client
    return nil
  }
  public func onCancel(withArguments arguments: Any?) -> FlutterError? {
    if lastEventClient == nil {
      return nil
    }
    lastEventClient?.close()
    removeClientFromList(clientId: lastEventClient!.clientId)
    lastEventClient = nil
    return nil
  }
}

// https://github.com/tdlib/td/blob/master/example/swift/src/main.swift
class EventClient {
  public var clientId: Int
  private var eventSink: FlutterEventSink
  private var stopFlag: Bool = false
  private var queue: DispatchQueue
  private static let labelPrefix = "TDLib Client#"
  private static let timeout: Double = 30
  init(clientId: Int, eventSink: @escaping FlutterEventSink) {
    self.clientId = clientId
    self.eventSink = eventSink
    self.queue = DispatchQueue(label: EventClient.labelPrefix + String(clientId))
    self.run()
  }
  private func run() {
    queue.async { [weak self] in
      while true {
        if self == nil {
          break
        }
        if self!.stopFlag {
          break
        }
        if let res = JsonClient.receive(clientId: self!.clientId, timeout: EventClient.timeout) {
          self?.eventSink(res)
        }
      }
      JsonClient.destroy(clientId: self!.clientId)
    }
  }
  public func error(e: FlutterError) {
    eventSink(e)
  }
  public func close() {
    stopFlag = true
  }
}
