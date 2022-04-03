// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CounterStateTearOff {
  const _$CounterStateTearOff();

  _Counter call({int count = 0}) {
    return _Counter(
      count: count,
    );
  }
}

/// @nodoc
const $CounterState = _$CounterStateTearOff();

/// @nodoc
mixin _$CounterState {
// for NullSafety, it's required to assign a default value
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterStateCopyWith<CounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res> implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  final CounterState _value;
  // ignore: unused_field
  final $Res Function(CounterState) _then;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CounterCopyWith<$Res> implements $CounterStateCopyWith<$Res> {
  factory _$CounterCopyWith(_Counter value, $Res Function(_Counter) then) =
      __$CounterCopyWithImpl<$Res>;
  @override
  $Res call({int count});
}

/// @nodoc
class __$CounterCopyWithImpl<$Res> extends _$CounterStateCopyWithImpl<$Res>
    implements _$CounterCopyWith<$Res> {
  __$CounterCopyWithImpl(_Counter _value, $Res Function(_Counter) _then)
      : super(_value, (v) => _then(v as _Counter));

  @override
  _Counter get _value => super._value as _Counter;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_Counter(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Counter with DiagnosticableTreeMixin implements _Counter {
  const _$_Counter({this.count = 0});

  @JsonKey()
  @override // for NullSafety, it's required to assign a default value
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CounterState(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CounterState'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Counter &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @JsonKey(ignore: true)
  @override
  _$CounterCopyWith<_Counter> get copyWith =>
      __$CounterCopyWithImpl<_Counter>(this, _$identity);
}

abstract class _Counter implements CounterState {
  const factory _Counter({int count}) = _$_Counter;

  @override // for NullSafety, it's required to assign a default value
  int get count;
  @override
  @JsonKey(ignore: true)
  _$CounterCopyWith<_Counter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FooterStateTearOff {
  const _$FooterStateTearOff();

  _Footer call({int selectedIndex = 0}) {
    return _Footer(
      selectedIndex: selectedIndex,
    );
  }
}

/// @nodoc
const $FooterState = _$FooterStateTearOff();

/// @nodoc
mixin _$FooterState {
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FooterStateCopyWith<FooterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterStateCopyWith<$Res> {
  factory $FooterStateCopyWith(
          FooterState value, $Res Function(FooterState) then) =
      _$FooterStateCopyWithImpl<$Res>;
  $Res call({int selectedIndex});
}

/// @nodoc
class _$FooterStateCopyWithImpl<$Res> implements $FooterStateCopyWith<$Res> {
  _$FooterStateCopyWithImpl(this._value, this._then);

  final FooterState _value;
  // ignore: unused_field
  final $Res Function(FooterState) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FooterCopyWith<$Res> implements $FooterStateCopyWith<$Res> {
  factory _$FooterCopyWith(_Footer value, $Res Function(_Footer) then) =
      __$FooterCopyWithImpl<$Res>;
  @override
  $Res call({int selectedIndex});
}

/// @nodoc
class __$FooterCopyWithImpl<$Res> extends _$FooterStateCopyWithImpl<$Res>
    implements _$FooterCopyWith<$Res> {
  __$FooterCopyWithImpl(_Footer _value, $Res Function(_Footer) _then)
      : super(_value, (v) => _then(v as _Footer));

  @override
  _Footer get _value => super._value as _Footer;

  @override
  $Res call({
    Object? selectedIndex = freezed,
  }) {
    return _then(_Footer(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Footer with DiagnosticableTreeMixin implements _Footer {
  const _$_Footer({this.selectedIndex = 0});

  @JsonKey()
  @override
  final int selectedIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FooterState(selectedIndex: $selectedIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FooterState'))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Footer &&
            const DeepCollectionEquality()
                .equals(other.selectedIndex, selectedIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedIndex));

  @JsonKey(ignore: true)
  @override
  _$FooterCopyWith<_Footer> get copyWith =>
      __$FooterCopyWithImpl<_Footer>(this, _$identity);
}

abstract class _Footer implements FooterState {
  const factory _Footer({int selectedIndex}) = _$_Footer;

  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$FooterCopyWith<_Footer> get copyWith => throw _privateConstructorUsedError;
}
