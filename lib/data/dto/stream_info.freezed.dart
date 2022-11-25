// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stream_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamInfoDto _$StreamInfoDtoFromJson(Map<String, dynamic> json) {
  return _StreamInfoDto.fromJson(json);
}

/// @nodoc
mixin _$StreamInfoDto {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'game_name')
  String get gameName => throw _privateConstructorUsedError;
  @JsonKey(name: 'viewer_count')
  int get viewerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamInfoDtoCopyWith<StreamInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamInfoDtoCopyWith<$Res> {
  factory $StreamInfoDtoCopyWith(
          StreamInfoDto value, $Res Function(StreamInfoDto) then) =
      _$StreamInfoDtoCopyWithImpl<$Res, StreamInfoDto>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'game_name') String gameName,
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class _$StreamInfoDtoCopyWithImpl<$Res, $Val extends StreamInfoDto>
    implements $StreamInfoDtoCopyWith<$Res> {
  _$StreamInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? gameName = null,
    Object? viewerCount = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreamInfoDtoCopyWith<$Res>
    implements $StreamInfoDtoCopyWith<$Res> {
  factory _$$_StreamInfoDtoCopyWith(
          _$_StreamInfoDto value, $Res Function(_$_StreamInfoDto) then) =
      __$$_StreamInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'game_name') String gameName,
      @JsonKey(name: 'viewer_count') int viewerCount,
      @JsonKey(name: 'language') String language});
}

/// @nodoc
class __$$_StreamInfoDtoCopyWithImpl<$Res>
    extends _$StreamInfoDtoCopyWithImpl<$Res, _$_StreamInfoDto>
    implements _$$_StreamInfoDtoCopyWith<$Res> {
  __$$_StreamInfoDtoCopyWithImpl(
      _$_StreamInfoDto _value, $Res Function(_$_StreamInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? gameName = null,
    Object? viewerCount = null,
    Object? language = null,
  }) {
    return _then(_$_StreamInfoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      gameName: null == gameName
          ? _value.gameName
          : gameName // ignore: cast_nullable_to_non_nullable
              as String,
      viewerCount: null == viewerCount
          ? _value.viewerCount
          : viewerCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamInfoDto implements _StreamInfoDto {
  const _$_StreamInfoDto(
      {required this.title,
      @JsonKey(name: 'game_name') required this.gameName,
      @JsonKey(name: 'viewer_count') required this.viewerCount,
      @JsonKey(name: 'language') required this.language});

  factory _$_StreamInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_StreamInfoDtoFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'game_name')
  final String gameName;
  @override
  @JsonKey(name: 'viewer_count')
  final int viewerCount;
  @override
  @JsonKey(name: 'language')
  final String language;

  @override
  String toString() {
    return 'StreamInfoDto(title: $title, gameName: $gameName, viewerCount: $viewerCount, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamInfoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.gameName, gameName) ||
                other.gameName == gameName) &&
            (identical(other.viewerCount, viewerCount) ||
                other.viewerCount == viewerCount) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, gameName, viewerCount, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamInfoDtoCopyWith<_$_StreamInfoDto> get copyWith =>
      __$$_StreamInfoDtoCopyWithImpl<_$_StreamInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamInfoDtoToJson(
      this,
    );
  }
}

abstract class _StreamInfoDto implements StreamInfoDto {
  const factory _StreamInfoDto(
          {required final String title,
          @JsonKey(name: 'game_name') required final String gameName,
          @JsonKey(name: 'viewer_count') required final int viewerCount,
          @JsonKey(name: 'language') required final String language}) =
      _$_StreamInfoDto;

  factory _StreamInfoDto.fromJson(Map<String, dynamic> json) =
      _$_StreamInfoDto.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'game_name')
  String get gameName;
  @override
  @JsonKey(name: 'viewer_count')
  int get viewerCount;
  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_StreamInfoDtoCopyWith<_$_StreamInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
