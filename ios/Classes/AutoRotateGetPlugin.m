#import "AutoRotateGetPlugin.h"
#if __has_include(<auto_rotate_get/auto_rotate_get-Swift.h>)
#import <auto_rotate_get/auto_rotate_get-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "auto_rotate_get-Swift.h"
#endif

@implementation AutoRotateGetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAutoRotateGetPlugin registerWithRegistrar:registrar];
}
@end
