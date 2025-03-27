import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

/// Data Transfer Object for holding time data from the iOS native module.
@freezed
abstract class HomeDTO with _$HomeDTO {
  const factory HomeDTO({
    required String currentTime,
    String? usbData,
  }) = _HomeDTO;

  factory HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);
}
