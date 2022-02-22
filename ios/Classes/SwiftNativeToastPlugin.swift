import Flutter
import UIKit
import SVProgressHUD

public class SwiftNativeToastPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "native_toast", binaryMessenger: registrar.messenger())
    let instance = SwiftNativeToastPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getPlatformVersion" {
      result("iOS " + UIDevice.current.systemVersion)
    } else if call.method == "showAgreeToast" {
        SVProgressHUD.show(withStatus: "请勾选同意后再登录");
    }
  }
}
