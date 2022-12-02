// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'top_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopItem _$TopItemFromJson(Map<String, dynamic> json) {
  return _TopItem.fromJson(json);
}

/// @nodoc
mixin _$TopItem {
  String get name => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopItemCopyWith<TopItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopItemCopyWith<$Res> {
  factory $TopItemCopyWith(TopItem value, $Res Function(TopItem) then) =
      _$TopItemCopyWithImpl<$Res, TopItem>;
  @useResult
  $Res call({String name, int count, String? link, int? number});
}

/// @nodoc
class _$TopItemCopyWithImpl<$Res, $Val extends TopItem>
    implements $TopItemCopyWith<$Res> {
  _$TopItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? link = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopItemCopyWith<$Res> implements $TopItemCopyWith<$Res> {
  factory _$$_TopItemCopyWith(
          _$_TopItem value, $Res Function(_$_TopItem) then) =
      __$$_TopItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count, String? link, int? number});
}

/// @nodoc
class __$$_TopItemCopyWithImpl<$Res>
    extends _$TopItemCopyWithImpl<$Res, _$_TopItem>
    implements _$$_TopItemCopyWith<$Res> {
  __$$_TopItemCopyWithImpl(_$_TopItem _value, $Res Function(_$_TopItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
    Object? link = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_TopItem(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopItem implements _TopItem {
  const _$_TopItem(
      {required this.name,
      required this.count,
      required this.link,
      required this.number});

  factory _$_TopItem.fromJson(Map<String, dynamic> json) =>
      _$$_TopItemFromJson(json);

  @override
  final String name;
  @override
  final int count;
  @override
  final String? link;
  @override
  final int? number;

  @override
  String toString() {
    return 'TopItem(name: $name, count: $count, link: $link, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, count, link, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopItemCopyWith<_$_TopItem> get copyWith =>
      __$$_TopItemCopyWithImpl<_$_TopItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopItemToJson(
      this,
    );
  }
}

abstract class _TopItem implements TopItem {
  const factory _TopItem(
      {required final String name,
      required final int count,
      required final String? link,
      required final int? number}) = _$_TopItem;

  factory _TopItem.fromJson(Map<String, dynamic> json) = _$_TopItem.fromJson;

  @override
  String get name;
  @override
  int get count;
  @override
  String? get link;
  @override
  int? get number;
  @override
  @JsonKey(ignore: true)
  _$$_TopItemCopyWith<_$_TopItem> get copyWith =>
      throw _privateConstructorUsedError;
}
