// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_song_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopSongDto _$TopSongDtoFromJson(Map<String, dynamic> json) {
  return _TopSongDto.fromJson(json);
}

/// @nodoc
mixin _$TopSongDto {
  int get count => throw _privateConstructorUsedError;
  String get mediaName => throw _privateConstructorUsedError;
  String get mediaLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopSongDtoCopyWith<TopSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopSongDtoCopyWith<$Res> {
  factory $TopSongDtoCopyWith(
          TopSongDto value, $Res Function(TopSongDto) then) =
      _$TopSongDtoCopyWithImpl<$Res, TopSongDto>;
  @useResult
  $Res call({int count, String mediaName, String mediaLink});
}

/// @nodoc
class _$TopSongDtoCopyWithImpl<$Res, $Val extends TopSongDto>
    implements $TopSongDtoCopyWith<$Res> {
  _$TopSongDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? mediaName = null,
    Object? mediaLink = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      mediaName: null == mediaName
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
              as String,
      mediaLink: null == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopSongDtoCopyWith<$Res>
    implements $TopSongDtoCopyWith<$Res> {
  factory _$$_TopSongDtoCopyWith(
          _$_TopSongDto value, $Res Function(_$_TopSongDto) then) =
      __$$_TopSongDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String mediaName, String mediaLink});
}

/// @nodoc
class __$$_TopSongDtoCopyWithImpl<$Res>
    extends _$TopSongDtoCopyWithImpl<$Res, _$_TopSongDto>
    implements _$$_TopSongDtoCopyWith<$Res> {
  __$$_TopSongDtoCopyWithImpl(
      _$_TopSongDto _value, $Res Function(_$_TopSongDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? mediaName = null,
    Object? mediaLink = null,
  }) {
    return _then(_$_TopSongDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      mediaName: null == mediaName
          ? _value.mediaName
          : mediaName // ignore: cast_nullable_to_non_nullable
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
class _$_TopSongDto implements _TopSongDto {
  const _$_TopSongDto(
      {required this.count, required this.mediaName, required this.mediaLink});

  factory _$_TopSongDto.fromJson(Map<String, dynamic> json) =>
      _$$_TopSongDtoFromJson(json);

  @override
  final int count;
  @override
  final String mediaName;
  @override
  final String mediaLink;

  @override
  String toString() {
    return 'TopSongDto(count: $count, mediaName: $mediaName, mediaLink: $mediaLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopSongDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.mediaName, mediaName) ||
                other.mediaName == mediaName) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, mediaName, mediaLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopSongDtoCopyWith<_$_TopSongDto> get copyWith =>
      __$$_TopSongDtoCopyWithImpl<_$_TopSongDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopSongDtoToJson(
      this,
    );
  }
}

abstract class _TopSongDto implements TopSongDto {
  const factory _TopSongDto(
      {required final int count,
      required final String mediaName,
      required final String mediaLink}) = _$_TopSongDto;

  factory _TopSongDto.fromJson(Map<String, dynamic> json) =
      _$_TopSongDto.fromJson;

  @override
  int get count;
  @override
  String get mediaName;
  @override
  String get mediaLink;
  @override
  @JsonKey(ignore: true)
  _$$_TopSongDtoCopyWith<_$_TopSongDto> get copyWith =>
      throw _privateConstructorUsedError;
}
