// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'color_palette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ColorPalette {
  ThemeColors get theme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorPaletteCopyWith<ColorPalette> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorPaletteCopyWith<$Res> {
  factory $ColorPaletteCopyWith(
          ColorPalette value, $Res Function(ColorPalette) then) =
      _$ColorPaletteCopyWithImpl<$Res>;
  $Res call({ThemeColors theme});
}

/// @nodoc
class _$ColorPaletteCopyWithImpl<$Res> implements $ColorPaletteCopyWith<$Res> {
  _$ColorPaletteCopyWithImpl(this._value, this._then);

  final ColorPalette _value;
  // ignore: unused_field
  final $Res Function(ColorPalette) _then;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeColors,
    ));
  }
}

/// @nodoc
abstract class _$$_ColorPalettenCopyWith<$Res>
    implements $ColorPaletteCopyWith<$Res> {
  factory _$$_ColorPalettenCopyWith(
          _$_ColorPaletten value, $Res Function(_$_ColorPaletten) then) =
      __$$_ColorPalettenCopyWithImpl<$Res>;
  @override
  $Res call({ThemeColors theme});
}

/// @nodoc
class __$$_ColorPalettenCopyWithImpl<$Res>
    extends _$ColorPaletteCopyWithImpl<$Res>
    implements _$$_ColorPalettenCopyWith<$Res> {
  __$$_ColorPalettenCopyWithImpl(
      _$_ColorPaletten _value, $Res Function(_$_ColorPaletten) _then)
      : super(_value, (v) => _then(v as _$_ColorPaletten));

  @override
  _$_ColorPaletten get _value => super._value as _$_ColorPaletten;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$_ColorPaletten(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeColors,
    ));
  }
}

/// @nodoc

class _$_ColorPaletten extends _ColorPaletten {
  const _$_ColorPaletten({required this.theme}) : super._();

  @override
  final ThemeColors theme;

  @override
  String toString() {
    return 'ColorPalette(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ColorPaletten &&
            const DeepCollectionEquality().equals(other.theme, theme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(theme));

  @JsonKey(ignore: true)
  @override
  _$$_ColorPalettenCopyWith<_$_ColorPaletten> get copyWith =>
      __$$_ColorPalettenCopyWithImpl<_$_ColorPaletten>(this, _$identity);
}

abstract class _ColorPaletten extends ColorPalette {
  const factory _ColorPaletten({required final ThemeColors theme}) =
      _$_ColorPaletten;
  const _ColorPaletten._() : super._();

  @override
  ThemeColors get theme;
  @override
  @JsonKey(ignore: true)
  _$$_ColorPalettenCopyWith<_$_ColorPaletten> get copyWith =>
      throw _privateConstructorUsedError;
}
