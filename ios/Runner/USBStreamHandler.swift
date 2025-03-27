import Flutter
import Foundation

class USBStreamHandler: NSObject, FlutterStreamHandler {
    private var timer: Timer?
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        // Start a timer to simulate USB-C data every 2 seconds
        timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { _ in
            let usbData = DataManager.shared.getSimulatedUSBData()
            events(usbData) // Send data to Flutter
        }
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        // Stop the timer when the stream is canceled
        timer?.invalidate()
        timer = nil
        return nil
    }
}
