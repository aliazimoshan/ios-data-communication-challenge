// FlutterBridge.swift
import Flutter

class FlutterBridge: NSObject {
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getCurrentTime":
            let data = DataManager.shared.getCurrentTime()
            result(data)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}
