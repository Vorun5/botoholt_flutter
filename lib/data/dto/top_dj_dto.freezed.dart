// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_dj_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopDjDto _$TopDjDtoFromJson(Map<String, dynamic> json) {
  return _TopDjDto.fromJson(json);
}

/// @nodoc
mixin _$TopDjDto {
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'requestedBy')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopDjDtoCopyWith<TopDjDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopDjDtoCopyWith<$Res> {
  factory $TopDjDtoCopyWith(TopDjDto value, $Res Function(TopDjDto) then) =
      _$TopDjDtoCopyWithImpl<$Res, TopDjDto>;
  @useResult
  $Res call({int count, @JsonKey(name: 'requestedBy') String name});
}

/// @nodoc
class _$TopDjDtoCopyWithImpl<$Res, $Val extends TopDjDto>
    implements $TopDjDtoCopyWith<$Res> {
  _$TopDjDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopDjDtoCopyWith<$Res> implements $TopDjDtoCopyWith<$Res> {
  factory _$$_TopDjDtoCopyWith(
          _$_TopDjDto value, $Res Function(_$_TopDjDto) then) =
      __$$_TopDjDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, @JsonKey(name: 'requestedBy') String name});
}

/// @nodoc
class __$$_TopDjDtoCopyWithImpl<$Res>
    extends _$TopDjDtoCopyWithImpl<$Res, _$_TopDjDto>
    implements _$$_TopDjDtoCopyWith<$Res> {
  __$$_TopDjDtoCopyWithImpl(
      _$_TopDjDto _value, $Res Function(_$_TopDjDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? name = null,
  }) {
    return _then(_$_TopDjDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopDjDto implements _TopDjDto {
  const _$_TopDjDto(
      {required this.count, @JsonKey(name: 'requestedBy') required this.name});

  factory _$_TopDjDto.fromJson(Map<String, dynamic> json) =>
      _$$_TopDjDtoFromJson(json);

  @override
  final int count;
  @override
  @JsonKey(name: 'requestedBy')
  final String name;

  @override
  String toString() {
    return 'TopDjDto(count: $count, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopDjDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopDjDtoCopyWith<_$_TopDjDto> get copyWith =>
      __$$_TopDjDtoCopyWithImpl<_$_TopDjDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopDjDtoToJson(
      this,
    );
  }
}

abstract class _TopDjDto implements TopDjDto {
  const factory _TopDjDto(
      {required final int count,
      @JsonKey(name: 'requestedBy') required final String name}) = _$_TopDjDto;

  factory _TopDjDto.fromJson(Map<String, dynamic> json) = _$_TopDjDto.fromJson;

  @override
  int get count;
  @override
  @JsonKey(name: 'requestedBy')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TopDjDtoCopyWith<_$_TopDjDto> get copyWith =>
      throw _privateConstructorUsedError;
}
