// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'services_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServicesDto _$ServicesDtoFromJson(Map<String, dynamic> json) {
  return _ServicesDto.fromJson(json);
}

/// @nodoc
mixin _$ServicesDto {
  bool get botoholt => throw _privateConstructorUsedError;
  bool get pubsub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServicesDtoCopyWith<ServicesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesDtoCopyWith<$Res> {
  factory $ServicesDtoCopyWith(
          ServicesDto value, $Res Function(ServicesDto) then) =
      _$ServicesDtoCopyWithImpl<$Res, ServicesDto>;
  @useResult
  $Res call({bool botoholt, bool pubsub});
}

/// @nodoc
class _$ServicesDtoCopyWithImpl<$Res, $Val extends ServicesDto>
    implements $ServicesDtoCopyWith<$Res> {
  _$ServicesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botoholt = null,
    Object? pubsub = null,
  }) {
    return _then(_value.copyWith(
      botoholt: null == botoholt
          ? _value.botoholt
          : botoholt // ignore: cast_nullable_to_non_nullable
              as bool,
      pubsub: null == pubsub
          ? _value.pubsub
          : pubsub // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ServicesDtoCopyWith<$Res>
    implements $ServicesDtoCopyWith<$Res> {
  factory _$$_ServicesDtoCopyWith(
          _$_ServicesDto value, $Res Function(_$_ServicesDto) then) =
      __$$_ServicesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool botoholt, bool pubsub});
}

/// @nodoc
class __$$_ServicesDtoCopyWithImpl<$Res>
    extends _$ServicesDtoCopyWithImpl<$Res, _$_ServicesDto>
    implements _$$_ServicesDtoCopyWith<$Res> {
  __$$_ServicesDtoCopyWithImpl(
      _$_ServicesDto _value, $Res Function(_$_ServicesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? botoholt = null,
    Object? pubsub = null,
  }) {
    return _then(_$_ServicesDto(
      botoholt: null == botoholt
          ? _value.botoholt
          : botoholt // ignore: cast_nullable_to_non_nullable
              as bool,
      pubsub: null == pubsub
          ? _value.pubsub
          : pubsub // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServicesDto implements _ServicesDto {
  const _$_ServicesDto({required this.botoholt, required this.pubsub});

  factory _$_ServicesDto.fromJson(Map<String, dynamic> json) =>
      _$$_ServicesDtoFromJson(json);

  @override
  final bool botoholt;
  @override
  final bool pubsub;

  @override
  String toString() {
    return 'ServicesDto(botoholt: $botoholt, pubsub: $pubsub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServicesDto &&
            (identical(other.botoholt, botoholt) ||
                other.botoholt == botoholt) &&
            (identical(other.pubsub, pubsub) || other.pubsub == pubsub));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, botoholt, pubsub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServicesDtoCopyWith<_$_ServicesDto> get copyWith =>
      __$$_ServicesDtoCopyWithImpl<_$_ServicesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServicesDtoToJson(
      this,
    );
  }
}

abstract class _ServicesDto implements ServicesDto {
  const factory _ServicesDto(
      {required final bool botoholt,
      required final bool pubsub}) = _$_ServicesDto;

  factory _ServicesDto.fromJson(Map<String, dynamic> json) =
      _$_ServicesDto.fromJson;

  @override
  bool get botoholt;
  @override
  bool get pubsub;
  @override
  @JsonKey(ignore: true)
  _$$_ServicesDtoCopyWith<_$_ServicesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
