#import "TdlibPlugin.h"
#if __has_include(<tdlib/tdlib-Swift.h>)
#import <tdlib/tdlib-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "tdlib-Swift.h"
#endif

@implementation TdlibPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTdlibPlugin registerWithRegistrar:registrar];
}
@end
