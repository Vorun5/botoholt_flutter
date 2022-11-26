// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'streamer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamerDto _$StreamerDtoFromJson(Map<String, dynamic> json) {
  return _StreamerDto.fromJson(json);
}

/// @nodoc
mixin _$StreamerDto {
  @JsonKey(name: 'login')
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'daLink')
  String? get daUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'broadcaster_type')
  String get broadcasterType => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'settings')
  ServicesDto? get services => throw _privateConstructorUsedError;
  StreamInfoDto? get streamInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamerDtoCopyWith<StreamerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamerDtoCopyWith<$Res> {
  factory $StreamerDtoCopyWith(
          StreamerDto value, $Res Function(StreamerDto) then) =
      _$StreamerDtoCopyWithImpl<$Res, StreamerDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String login,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'daLink') String? daUrl,
      @JsonKey(name: 'broadcaster_type') String broadcasterType,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'settings') ServicesDto? services,
      StreamInfoDto? streamInfo});

  $ServicesDtoCopyWith<$Res>? get services;
  $StreamInfoDtoCopyWith<$Res>? get streamInfo;
}

/// @nodoc
class _$StreamerDtoCopyWithImpl<$Res, $Val extends StreamerDto>
    implements $StreamerDtoCopyWith<$Res> {
  _$StreamerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? displayName = null,
    Object? daUrl = freezed,
    Object? broadcasterType = null,
    Object? profileImageUrl = null,
    Object? services = freezed,
    Object? streamInfo = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      daUrl: freezed == daUrl
          ? _value.daUrl
          : daUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterType: null == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as ServicesDto?,
      streamInfo: freezed == streamInfo
          ? _value.streamInfo
          : streamInfo // ignore: cast_nullable_to_non_nullable
              as StreamInfoDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServicesDtoCopyWith<$Res>? get services {
    if (_value.services == null) {
      return null;
    }

    return $ServicesDtoCopyWith<$Res>(_value.services!, (value) {
      return _then(_value.copyWith(services: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StreamInfoDtoCopyWith<$Res>? get streamInfo {
    if (_value.streamInfo == null) {
      return null;
    }

    return $StreamInfoDtoCopyWith<$Res>(_value.streamInfo!, (value) {
      return _then(_value.copyWith(streamInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StreamerDtoCopyWith<$Res>
    implements $StreamerDtoCopyWith<$Res> {
  factory _$$_StreamerDtoCopyWith(
          _$_StreamerDto value, $Res Function(_$_StreamerDto) then) =
      __$$_StreamerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String login,
      @JsonKey(name: 'display_name') String displayName,
      @JsonKey(name: 'daLink') String? daUrl,
      @JsonKey(name: 'broadcaster_type') String broadcasterType,
      @JsonKey(name: 'profile_image_url') String profileImageUrl,
      @JsonKey(name: 'settings') ServicesDto? services,
      StreamInfoDto? streamInfo});

  @override
  $ServicesDtoCopyWith<$Res>? get services;
  @override
  $StreamInfoDtoCopyWith<$Res>? get streamInfo;
}

/// @nodoc
class __$$_StreamerDtoCopyWithImpl<$Res>
    extends _$StreamerDtoCopyWithImpl<$Res, _$_StreamerDto>
    implements _$$_StreamerDtoCopyWith<$Res> {
  __$$_StreamerDtoCopyWithImpl(
      _$_StreamerDto _value, $Res Function(_$_StreamerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? displayName = null,
    Object? daUrl = freezed,
    Object? broadcasterType = null,
    Object? profileImageUrl = null,
    Object? services = freezed,
    Object? streamInfo = freezed,
  }) {
    return _then(_$_StreamerDto(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      daUrl: freezed == daUrl
          ? _value.daUrl
          : daUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcasterType: null == broadcasterType
          ? _value.broadcasterType
          : broadcasterType // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      services: freezed == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as ServicesDto?,
      streamInfo: freezed == streamInfo
          ? _value.streamInfo
          : streamInfo // ignore: cast_nullable_to_non_nullable
              as StreamInfoDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamerDto implements _StreamerDto {
  const _$_StreamerDto(
      {@JsonKey(name: 'login') required this.login,
      @JsonKey(name: 'display_name') required this.displayName,
      @JsonKey(name: 'daLink') required this.daUrl,
      @JsonKey(name: 'broadcaster_type') required this.broadcasterType,
      @JsonKey(name: 'profile_image_url') required this.profileImageUrl,
      @JsonKey(name: 'settings') required this.services,
      required this.streamInfo});

  factory _$_StreamerDto.fromJson(Map<String, dynamic> json) =>
      _$$_StreamerDtoFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String login;
  @override
  @JsonKey(name: 'display_name')
  final String displayName;
  @override
  @JsonKey(name: 'daLink')
  final String? daUrl;
  @override
  @JsonKey(name: 'broadcaster_type')
  final String broadcasterType;
  @override
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;
  @override
  @JsonKey(name: 'settings')
  final ServicesDto? services;
  @override
  final StreamInfoDto? streamInfo;

  @override
  String toString() {
    return 'StreamerDto(login: $login, displayName: $displayName, daUrl: $daUrl, broadcasterType: $broadcasterType, profileImageUrl: $profileImageUrl, services: $services, streamInfo: $streamInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamerDto &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.daUrl, daUrl) || other.daUrl == daUrl) &&
            (identical(other.broadcasterType, broadcasterType) ||
                other.broadcasterType == broadcasterType) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.services, services) ||
                other.services == services) &&
            (identical(other.streamInfo, streamInfo) ||
                other.streamInfo == streamInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, displayName, daUrl,
      broadcasterType, profileImageUrl, services, streamInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamerDtoCopyWith<_$_StreamerDto> get copyWith =>
      __$$_StreamerDtoCopyWithImpl<_$_StreamerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamerDtoToJson(
      this,
    );
  }
}

abstract class _StreamerDto implements StreamerDto {
  const factory _StreamerDto(
      {@JsonKey(name: 'login') required final String login,
      @JsonKey(name: 'display_name') required final String displayName,
      @JsonKey(name: 'daLink') required final String? daUrl,
      @JsonKey(name: 'broadcaster_type') required final String broadcasterType,
      @JsonKey(name: 'profile_image_url') required final String profileImageUrl,
      @JsonKey(name: 'settings') required final ServicesDto? services,
      required final StreamInfoDto? streamInfo}) = _$_StreamerDto;

  factory _StreamerDto.fromJson(Map<String, dynamic> json) =
      _$_StreamerDto.fromJson;

  @override
  @JsonKey(name: 'login')
  String get login;
  @override
  @JsonKey(name: 'display_name')
  String get displayName;
  @override
  @JsonKey(name: 'daLink')
  String? get daUrl;
  @override
  @JsonKey(name: 'broadcaster_type')
  String get broadcasterType;
  @override
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;
  @override
  @JsonKey(name: 'settings')
  ServicesDto? get services;
  @override
  StreamInfoDto? get streamInfo;
  @override
  @JsonKey(ignore: true)
  _$$_StreamerDtoCopyWith<_$_StreamerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
