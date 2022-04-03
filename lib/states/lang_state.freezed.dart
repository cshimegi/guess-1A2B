// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lang_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LangStateTearOff {
  const _$LangStateTearOff();

  _Lang call({Locale locale = const Locale('en')}) {
    return _Lang(
      locale: locale,
    );
  }
}

/// @nodoc
const $LangState = _$LangStateTearOff();

/// @nodoc
mixin _$LangState {
// for NullSafety, it's required to assign a default value
  Locale get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LangStateCopyWith<LangState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangStateCopyWith<$Res> {
  factory $LangStateCopyWith(LangState value, $Res Function(LangState) then) =
      _$LangStateCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LangStateCopyWithImpl<$Res> implements $LangStateCopyWith<$Res> {
  _$LangStateCopyWithImpl(this._value, this._then);

  final LangState _value;
  // ignore: unused_field
  final $Res Function(LangState) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$LangCopyWith<$Res> implements $LangStateCopyWith<$Res> {
  factory _$LangCopyWith(_Lang value, $Res Function(_Lang) then) =
      __$LangCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$LangCopyWithImpl<$Res> extends _$LangStateCopyWithImpl<$Res>
    implements _$LangCopyWith<$Res> {
  __$LangCopyWithImpl(_Lang _value, $Res Function(_Lang) _then)
      : super(_value, (v) => _then(v as _Lang));

  @override
  _Lang get _value => super._value as _Lang;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_Lang(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_Lang with DiagnosticableTreeMixin implements _Lang {
  const _$_Lang({this.locale = const Locale('en')});

  @JsonKey()
  @override // for NullSafety, it's required to assign a default value
  final Locale locale;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LangState(locale: $locale)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LangState'))
      ..add(DiagnosticsProperty('locale', locale));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Lang &&
            const DeepCollectionEquality().equals(other.locale, locale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locale));

  @JsonKey(ignore: true)
  @override
  _$LangCopyWith<_Lang> get copyWith =>
      __$LangCopyWithImpl<_Lang>(this, _$identity);
}

abstract class _Lang implements LangState {
  const factory _Lang({Locale locale}) = _$_Lang;

  @override // for NullSafety, it's required to assign a default value
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$LangCopyWith<_Lang> get copyWith => throw _privateConstructorUsedError;
}
