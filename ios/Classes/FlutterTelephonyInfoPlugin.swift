import Flutter
import UIKit
import CoreTelephony

public class FlutterTelephonyInfoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_telephony_info", binaryMessenger: registrar.messenger())
    let instance = FlutterTelephonyInfoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "getCurrentRadioAccessTechnology":
        var info = CTTelephonyNetworkInfo()
        let params = info.serviceCurrentRadioAccessTechnology ?? [:]
        result(params.values.joined(separator: "|"))
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
