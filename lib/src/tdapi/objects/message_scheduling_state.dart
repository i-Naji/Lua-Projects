part of '../tdapi.dart';

class MessageSchedulingState extends TdObject {
  

  /// Contains information about the time when a scheduled message will be sent
  MessageSchedulingState();

  /// a MessageSchedulingState return type can be :
  /// * MessageSchedulingStateSendAtDate
  /// * MessageSchedulingStateSendWhenOnline
  factory MessageSchedulingState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case MessageSchedulingStateSendAtDate.CONSTRUCTOR:
        return MessageSchedulingStateSendAtDate.fromJson(json);
      case MessageSchedulingStateSendWhenOnline.CONSTRUCTOR:
        return MessageSchedulingStateSendWhenOnline.fromJson(json);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      
    };
  }

  static const CONSTRUCTOR = 'messageSchedulingState';
}

class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  int sendDate;

  /// The message will be sent at the specified date. 
  /// [sendDate] Date the message will be sent. The date must be within 367 days in the future
  MessageSchedulingStateSendAtDate({this.sendDate});

  /// Parse from a json
  MessageSchedulingStateSendAtDate.fromJson(Map<String, dynamic> json)  {
    this.sendDate = json['send_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "send_date": this.sendDate,
    };
  }

  static const CONSTRUCTOR = 'messageSchedulingStateSendAtDate';
}

class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  

  /// The message will be sent when the peer will be online. Applicable to private chats only and when the exact online status of the peer is known
  MessageSchedulingStateSendWhenOnline();

  /// Parse from a json
  MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'messageSchedulingStateSendWhenOnline';
}