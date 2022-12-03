// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_stremaer_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewStremaerHistory {
  bool get isLoading => throw _privateConstructorUsedError;
  List<HistorySongDto> get history => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewStremaerHistoryCopyWith<ViewStremaerHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStremaerHistoryCopyWith<$Res> {
  factory $ViewStremaerHistoryCopyWith(
          ViewStremaerHistory value, $Res Function(ViewStremaerHistory) then) =
      _$ViewStremaerHistoryCopyWithImpl<$Res, ViewStremaerHistory>;
  @useResult
  $Res call({bool isLoading, List<HistorySongDto> history});
}

/// @nodoc
class _$ViewStremaerHistoryCopyWithImpl<$Res, $Val extends ViewStremaerHistory>
    implements $ViewStremaerHistoryCopyWith<$Res> {
  _$ViewStremaerHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistorySongDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ViewStremaerHistoryCopyWith<$Res>
    implements $ViewStremaerHistoryCopyWith<$Res> {
  factory _$$_ViewStremaerHistoryCopyWith(_$_ViewStremaerHistory value,
          $Res Function(_$_ViewStremaerHistory) then) =
      __$$_ViewStremaerHistoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<HistorySongDto> history});
}

/// @nodoc
class __$$_ViewStremaerHistoryCopyWithImpl<$Res>
    extends _$ViewStremaerHistoryCopyWithImpl<$Res, _$_ViewStremaerHistory>
    implements _$$_ViewStremaerHistoryCopyWith<$Res> {
  __$$_ViewStremaerHistoryCopyWithImpl(_$_ViewStremaerHistory _value,
      $Res Function(_$_ViewStremaerHistory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? history = null,
  }) {
    return _then(_$_ViewStremaerHistory(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistorySongDto>,
    ));
  }
}

/// @nodoc

class _$_ViewStremaerHistory implements _ViewStremaerHistory {
  const _$_ViewStremaerHistory(
      {required this.isLoading, required final List<HistorySongDto> history})
      : _history = history;

  @override
  final bool isLoading;
  final List<HistorySongDto> _history;
  @override
  List<HistorySongDto> get history {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'ViewStremaerHistory(isLoading: $isLoading, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewStremaerHistory &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewStremaerHistoryCopyWith<_$_ViewStremaerHistory> get copyWith =>
      __$$_ViewStremaerHistoryCopyWithImpl<_$_ViewStremaerHistory>(
          this, _$identity);
}

abstract class _ViewStremaerHistory implements ViewStremaerHistory {
  const factory _ViewStremaerHistory(
      {required final bool isLoading,
      required final List<HistorySongDto> history}) = _$_ViewStremaerHistory;

  @override
  bool get isLoading;
  @override
  List<HistorySongDto> get history;
  @override
  @JsonKey(ignore: true)
  _$$_ViewStremaerHistoryCopyWith<_$_ViewStremaerHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
