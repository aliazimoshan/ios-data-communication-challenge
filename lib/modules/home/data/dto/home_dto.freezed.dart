// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeDTO {
  String get currentTime;
  String? get usbData;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeDTOCopyWith<HomeDTO> get copyWith =>
      _$HomeDTOCopyWithImpl<HomeDTO>(this as HomeDTO, _$identity);

  /// Serializes this HomeDTO to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeDTO &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.usbData, usbData) || other.usbData == usbData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentTime, usbData);

  @override
  String toString() {
    return 'HomeDTO(currentTime: $currentTime, usbData: $usbData)';
  }
}

/// @nodoc
abstract mixin class $HomeDTOCopyWith<$Res> {
  factory $HomeDTOCopyWith(HomeDTO value, $Res Function(HomeDTO) _then) =
      _$HomeDTOCopyWithImpl;
  @useResult
  $Res call({String currentTime, String? usbData});
}

/// @nodoc
class _$HomeDTOCopyWithImpl<$Res> implements $HomeDTOCopyWith<$Res> {
  _$HomeDTOCopyWithImpl(this._self, this._then);

  final HomeDTO _self;
  final $Res Function(HomeDTO) _then;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTime = null,
    Object? usbData = freezed,
  }) {
    return _then(_self.copyWith(
      currentTime: null == currentTime
          ? _self.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as String,
      usbData: freezed == usbData
          ? _self.usbData
          : usbData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _HomeDTO implements HomeDTO {
  const _HomeDTO({required this.currentTime, this.usbData});
  factory _HomeDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDTOFromJson(json);

  @override
  final String currentTime;
  @override
  final String? usbData;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeDTOCopyWith<_HomeDTO> get copyWith =>
      __$HomeDTOCopyWithImpl<_HomeDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeDTOToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeDTO &&
            (identical(other.currentTime, currentTime) ||
                other.currentTime == currentTime) &&
            (identical(other.usbData, usbData) || other.usbData == usbData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentTime, usbData);

  @override
  String toString() {
    return 'HomeDTO(currentTime: $currentTime, usbData: $usbData)';
  }
}

/// @nodoc
abstract mixin class _$HomeDTOCopyWith<$Res> implements $HomeDTOCopyWith<$Res> {
  factory _$HomeDTOCopyWith(_HomeDTO value, $Res Function(_HomeDTO) _then) =
      __$HomeDTOCopyWithImpl;
  @override
  @useResult
  $Res call({String currentTime, String? usbData});
}

/// @nodoc
class __$HomeDTOCopyWithImpl<$Res> implements _$HomeDTOCopyWith<$Res> {
  __$HomeDTOCopyWithImpl(this._self, this._then);

  final _HomeDTO _self;
  final $Res Function(_HomeDTO) _then;

  /// Create a copy of HomeDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentTime = null,
    Object? usbData = freezed,
  }) {
    return _then(_HomeDTO(
      currentTime: null == currentTime
          ? _self.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as String,
      usbData: freezed == usbData
          ? _self.usbData
          : usbData // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
