// DataManager.swift
// Singleton to simulate an iOS data source for the communication prototype.class DataManager {
class DataManager {
    static let shared = DataManager()
    private var usbDataCounter = 0
    
    private init() {}
    
    func getCurrentTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter.string(from: Date())
    }
    
    func getSimulatedUSBData() -> String {
        usbDataCounter += 1
        return "USB-C Data Packet #\(usbDataCounter): \(Int.random(in: 0...100)) bytes"
    }
}
