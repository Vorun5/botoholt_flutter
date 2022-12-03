// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_stremaer_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ViewStremaerQueue {
  bool get isLoading => throw _privateConstructorUsedError;
  StreamerQueueDto? get queue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewStremaerQueueCopyWith<ViewStremaerQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewStremaerQueueCopyWith<$Res> {
  factory $ViewStremaerQueueCopyWith(
          ViewStremaerQueue value, $Res Function(ViewStremaerQueue) then) =
      _$ViewStremaerQueueCopyWithImpl<$Res, ViewStremaerQueue>;
  @useResult
  $Res call({bool isLoading, StreamerQueueDto? queue});

  $StreamerQueueDtoCopyWith<$Res>? get queue;
}

/// @nodoc
class _$ViewStremaerQueueCopyWithImpl<$Res, $Val extends ViewStremaerQueue>
    implements $ViewStremaerQueueCopyWith<$Res> {
  _$ViewStremaerQueueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? queue = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      queue: freezed == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as StreamerQueueDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StreamerQueueDtoCopyWith<$Res>? get queue {
    if (_value.queue == null) {
      return null;
    }

    return $StreamerQueueDtoCopyWith<$Res>(_value.queue!, (value) {
      return _then(_value.copyWith(queue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ViewStremaerQueueCopyWith<$Res>
    implements $ViewStremaerQueueCopyWith<$Res> {
  factory _$$_ViewStremaerQueueCopyWith(_$_ViewStremaerQueue value,
          $Res Function(_$_ViewStremaerQueue) then) =
      __$$_ViewStremaerQueueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, StreamerQueueDto? queue});

  @override
  $StreamerQueueDtoCopyWith<$Res>? get queue;
}

/// @nodoc
class __$$_ViewStremaerQueueCopyWithImpl<$Res>
    extends _$ViewStremaerQueueCopyWithImpl<$Res, _$_ViewStremaerQueue>
    implements _$$_ViewStremaerQueueCopyWith<$Res> {
  __$$_ViewStremaerQueueCopyWithImpl(
      _$_ViewStremaerQueue _value, $Res Function(_$_ViewStremaerQueue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? queue = freezed,
  }) {
    return _then(_$_ViewStremaerQueue(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      queue: freezed == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as StreamerQueueDto?,
    ));
  }
}

/// @nodoc

class _$_ViewStremaerQueue implements _ViewStremaerQueue {
  const _$_ViewStremaerQueue({required this.isLoading, required this.queue});

  @override
  final bool isLoading;
  @override
  final StreamerQueueDto? queue;

  @override
  String toString() {
    return 'ViewStremaerQueue(isLoading: $isLoading, queue: $queue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewStremaerQueue &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.queue, queue) || other.queue == queue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, queue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewStremaerQueueCopyWith<_$_ViewStremaerQueue> get copyWith =>
      __$$_ViewStremaerQueueCopyWithImpl<_$_ViewStremaerQueue>(
          this, _$identity);
}

abstract class _ViewStremaerQueue implements ViewStremaerQueue {
  const factory _ViewStremaerQueue(
      {required final bool isLoading,
      required final StreamerQueueDto? queue}) = _$_ViewStremaerQueue;

  @override
  bool get isLoading;
  @override
  StreamerQueueDto? get queue;
  @override
  @JsonKey(ignore: true)
  _$$_ViewStremaerQueueCopyWith<_$_ViewStremaerQueue> get copyWith =>
      throw _privateConstructorUsedError;
}
