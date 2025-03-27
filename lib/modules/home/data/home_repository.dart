import 'package:flutter/services.dart';
import 'package:zanis_task/modules/home/data/dto/home_dto.dart';
import 'package:zanis_task/modules/home/domain/home_repository_interface.dart';

class HomeRepository implements HomeRepositoryInterface {
  static const MethodChannel _methodChannel =
      MethodChannel('com.example.data_channel');
  static const EventChannel _eventChannel =
      EventChannel('com.example.data_channel/usb_stream');

  @override
  Future<HomeDTO> fetchCurrentTime() async {
    try {
      final String time = await _methodChannel
          .invokeMethod('getCurrentTime')
          .timeout(const Duration(seconds: 5), onTimeout: () {
        throw Exception('Time fetch timed out after 5 seconds');
      });
      if (time.isEmpty) throw Exception('Received empty time');
      return HomeDTO(currentTime: time);
    } on PlatformException catch (e) {
      throw Exception('Platform error fetching time: ${e.message}');
    } catch (e) {
      throw Exception('Failed to fetch time: $e');
    }
  }

  @override
  Stream<String> fetchUSBDataStream() {
    try {
      return _eventChannel.receiveBroadcastStream().map((event) {
        if (event == null) throw Exception('Received null USB data');
        return event as String;
      }).handleError((error) {
        throw Exception('USB stream error: $error');
      });
    } catch (e) {
      return Stream.error(Exception('Failed to initialize USB stream: $e'));
    }
  }
}
