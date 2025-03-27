import Flutter
import UIKit

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        guard let controller = window?.rootViewController as? FlutterViewController else {
            fatalError("Root view controller must be FlutterViewController")
        }
        
        // Method Channel for one-time calls (e.g., getCurrentTime)
        let methodChannel = FlutterMethodChannel(
            name: "com.example.data_channel",
            binaryMessenger: controller.binaryMessenger
        )
        let bridge = FlutterBridge()
        methodChannel.setMethodCallHandler { (call, result) in
            bridge.handle(call, result: result)
        }
        
        // Event Channel for streaming USB-C data
        let eventChannel = FlutterEventChannel(
            name: "com.example.data_channel/usb_stream",
            binaryMessenger: controller.binaryMessenger
        )
        eventChannel.setStreamHandler(USBStreamHandler())
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
