# iOS Data Communication Prototype Challenge

## Overview

Prototype demonstrating iOS-Flutter communication:

- Fetches current time via `MethodChannel`.
- Streams simulated USB-C data via `EventChannel`.

## Setup

1. Clone: `git clone https://github.com/aliazimoshan/ios-data-communication-challenge.git`
2. Install: `flutter pub get`
3. Build iOS: Open `ios/Runner.xcodeproj` in Xcode, run on simulator.
4. Run: `flutter run`

## Architecture

- **Flutter**: `HomeScreen` (UI), `HomeRepository` (data), Riverpod providers.
- **iOS**: `DataManager` (Singleton), `FlutterBridge` (Adapter), `USBStreamHandler`.

## Features

- Time updates on button press.
- USB-C data streams every 2 seconds.
- Errors shown via `ErrorDisplayWidget`.

## Recordings

- `part1_feasibility.mp3`: Feasibility study.
- `part2_prototype.mp4`: Prototype demo.
- `part3_debugging.mp3`: Debugging scenarios.
