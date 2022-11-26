// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'queue_song_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueueSongDto _$QueueSongDtoFromJson(Map<String, dynamic> json) {
  return _QueueSongDto.fromJson(json);
}

/// @nodoc
mixin _$QueueSongDto {
  int get mediaId => throw _privateConstructorUsedError;
  String get mediaName => throw _privateConstructorUsedError;
  String get mediaLink => throw _privateConstructorUsedError;
  String get requestedBy => throw _privateConstructorUsedError;
  int get startFrom => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueueSongDtoCopyWith<QueueSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueueSongDtoCopyWith<$Res> {
  factory $QueueSongDtoCopyWith(
          QueueSongDto value, $Res Function(QueueSongDto) then) =
      _$QueueSongDtoCopyWithImpl<$Res, QueueSongDto>;
  @useResult
  $Res call(
      {int mediaId,
      String mediaName,
      String mediaLink,
      String requestedBy,
      int startFrom,
      int duration});
}

/// @nodoc
class _$QueueSongDtoCopyWithImpl<$Res, $Val extends QueueSongDto>
    implements $QueueSongDtoCopyWith<$Res> {
  _$QueueSongDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = null,
    Object? mediaName = null,
    Object? mediaLink = null,
    Object? requestedBy = null,
    Object? startFrom = null,
    Object? duration = null,
  }) {
    return _then(_value.copyWith(
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaName: null == mediaName
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: null == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      startFrom: null == startFrom
          ? _value.startFrom
          : startFrom // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueueSongDtoCopyWith<$Res>
    implements $QueueSongDtoCopyWith<$Res> {
  factory _$$_QueueSongDtoCopyWith(
          _$_QueueSongDto value, $Res Function(_$_QueueSongDto) then) =
      __$$_QueueSongDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int mediaId,
      String mediaName,
      String mediaLink,
      String requestedBy,
      int startFrom,
      int duration});
}

/// @nodoc
class __$$_QueueSongDtoCopyWithImpl<$Res>
    extends _$QueueSongDtoCopyWithImpl<$Res, _$_QueueSongDto>
    implements _$$_QueueSongDtoCopyWith<$Res> {
  __$$_QueueSongDtoCopyWithImpl(
      _$_QueueSongDto _value, $Res Function(_$_QueueSongDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaId = null,
    Object? mediaName = null,
    Object? mediaLink = null,
    Object? requestedBy = null,
    Object? startFrom = null,
    Object? duration = null,
  }) {
    return _then(_$_QueueSongDto(
      mediaId: null == mediaId
          ? _value.mediaId
          : mediaId // ignore: cast_nullable_to_non_nullable
              as int,
      mediaName: null == mediaName
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: null == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String,
      requestedBy: null == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String,
      startFrom: null == startFrom
          ? _value.startFrom
          : startFrom // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueueSongDto implements _QueueSongDto {
  const _$_QueueSongDto(
      {required this.mediaId,
      required this.mediaName,
      required this.mediaLink,
      required this.requestedBy,
      required this.startFrom,
      required this.duration});

  factory _$_QueueSongDto.fromJson(Map<String, dynamic> json) =>
      _$$_QueueSongDtoFromJson(json);

  @override
  final int mediaId;
  @override
  final String mediaName;
  @override
  final String mediaLink;
  @override
  final String requestedBy;
  @override
  final int startFrom;
  @override
  final int duration;

  @override
  String toString() {
    return 'QueueSongDto(mediaId: $mediaId, mediaName: $mediaName, mediaLink: $mediaLink, requestedBy: $requestedBy, startFrom: $startFrom, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueueSongDto &&
            (identical(other.mediaId, mediaId) || other.mediaId == mediaId) &&
            (identical(other.mediaName, mediaName) ||
                other.mediaName == mediaName) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.startFrom, startFrom) ||
                other.startFrom == startFrom) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mediaId, mediaName, mediaLink,
      requestedBy, startFrom, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueueSongDtoCopyWith<_$_QueueSongDto> get copyWith =>
      __$$_QueueSongDtoCopyWithImpl<_$_QueueSongDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueueSongDtoToJson(
      this,
    );
  }
}

abstract class _QueueSongDto implements QueueSongDto {
  const factory _QueueSongDto(
      {required final int mediaId,
      required final String mediaName,
      required final String mediaLink,
      required final String requestedBy,
      required final int startFrom,
      required final int duration}) = _$_QueueSongDto;

  factory _QueueSongDto.fromJson(Map<String, dynamic> json) =
      _$_QueueSongDto.fromJson;

  @override
  int get mediaId;
  @override
  String get mediaName;
  @override
  String get mediaLink;
  @override
  String get requestedBy;
  @override
  int get startFrom;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$$_QueueSongDtoCopyWith<_$_QueueSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}
