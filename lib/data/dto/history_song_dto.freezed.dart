// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_song_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistorySongDto _$HistorySongDtoFromJson(Map<String, dynamic> json) {
  return _HistorySongDto.fromJson(json);
}

/// @nodoc
mixin _$HistorySongDto {
  String get mediaName => throw _privateConstructorUsedError;
  String get timeFrom => throw _privateConstructorUsedError;
  String get requestedBy => throw _privateConstructorUsedError;
  String get mediaLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistorySongDtoCopyWith<HistorySongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistorySongDtoCopyWith<$Res> {
  factory $HistorySongDtoCopyWith(
          HistorySongDto value, $Res Function(HistorySongDto) then) =
      _$HistorySongDtoCopyWithImpl<$Res, HistorySongDto>;
  @useResult
  $Res call(
      {String mediaName,
      String timeFrom,
      String requestedBy,
      String mediaLink});
}

/// @nodoc
class _$HistorySongDtoCopyWithImpl<$Res, $Val extends HistorySongDto>
    implements $HistorySongDtoCopyWith<$Res> {
  _$HistorySongDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaName = null,
    Object? timeFrom = null,
    Object? requestedBy = null,
    Object? mediaLink = null,
  }) {
    return _then(_value.copyWith(
      mediaName: null == mediaName
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String,
      timeFrom: null == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: null == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HistorySongDtoCopyWith<$Res>
    implements $HistorySongDtoCopyWith<$Res> {
  factory _$$_HistorySongDtoCopyWith(
          _$_HistorySongDto value, $Res Function(_$_HistorySongDto) then) =
      __$$_HistorySongDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mediaName,
      String timeFrom,
      String requestedBy,
      String mediaLink});
}

/// @nodoc
class __$$_HistorySongDtoCopyWithImpl<$Res>
    extends _$HistorySongDtoCopyWithImpl<$Res, _$_HistorySongDto>
    implements _$$_HistorySongDtoCopyWith<$Res> {
  __$$_HistorySongDtoCopyWithImpl(
      _$_HistorySongDto _value, $Res Function(_$_HistorySongDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaName = null,
    Object? timeFrom = null,
    Object? requestedBy = null,
    Object? mediaLink = null,
  }) {
    return _then(_$_HistorySongDto(
      mediaName: null == mediaName
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String,
      timeFrom: null == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: null == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistorySongDto implements _HistorySongDto {
  const _$_HistorySongDto(
      {required this.mediaName,
      required this.timeFrom,
      required this.requestedBy,
      required this.mediaLink});

  factory _$_HistorySongDto.fromJson(Map<String, dynamic> json) =>
      _$$_HistorySongDtoFromJson(json);

  @override
  final String mediaName;
  @override
  final String timeFrom;
  @override
  final String requestedBy;
  @override
  final String mediaLink;

  @override
  String toString() {
    return 'HistorySongDto(mediaName: $mediaName, timeFrom: $timeFrom, requestedBy: $requestedBy, mediaLink: $mediaLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistorySongDto &&
            (identical(other.mediaName, mediaName) ||
                other.mediaName == mediaName) &&
            (identical(other.timeFrom, timeFrom) ||
                other.timeFrom == timeFrom) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mediaName, timeFrom, requestedBy, mediaLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistorySongDtoCopyWith<_$_HistorySongDto> get copyWith =>
      __$$_HistorySongDtoCopyWithImpl<_$_HistorySongDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistorySongDtoToJson(
      this,
    );
  }
}

abstract class _HistorySongDto implements HistorySongDto {
  const factory _HistorySongDto(
      {required final String mediaName,
      required final String timeFrom,
      required final String requestedBy,
      required final String mediaLink}) = _$_HistorySongDto;

  factory _HistorySongDto.fromJson(Map<String, dynamic> json) =
      _$_HistorySongDto.fromJson;

  @override
  String get mediaName;
  @override
  String get timeFrom;
  @override
  String get requestedBy;
  @override
  String get mediaLink;
  @override
  @JsonKey(ignore: true)
  _$$_HistorySongDtoCopyWith<_$_HistorySongDto> get copyWith =>
      throw _privateConstructorUsedError;
}
