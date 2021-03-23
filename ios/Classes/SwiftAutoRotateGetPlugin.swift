import Flutter
import UIKit

public class SwiftAutoRotateGetPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "auto_rotate_get", binaryMessenger: registrar.messenger())
    let instance = SwiftAutoRotateGetPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if ("getAutoRotate" == call.method) {
        result(false)
    } else {
        result(FlutterMethodNotImplemented)
    }
  }
}
