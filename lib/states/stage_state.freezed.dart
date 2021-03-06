// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StageStateTearOff {
  const _$StageStateTearOff();

  _Stage call({int selectedStageDegree = 0}) {
    return _Stage(
      selectedStageDegree: selectedStageDegree,
    );
  }
}

/// @nodoc
const $StageState = _$StageStateTearOff();

/// @nodoc
mixin _$StageState {
// for NullSafety, it's required to assign a default value
  int get selectedStageDegree => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StageStateCopyWith<StageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageStateCopyWith<$Res> {
  factory $StageStateCopyWith(
          StageState value, $Res Function(StageState) then) =
      _$StageStateCopyWithImpl<$Res>;
  $Res call({int selectedStageDegree});
}

/// @nodoc
class _$StageStateCopyWithImpl<$Res> implements $StageStateCopyWith<$Res> {
  _$StageStateCopyWithImpl(this._value, this._then);

  final StageState _value;
  // ignore: unused_field
  final $Res Function(StageState) _then;

  @override
  $Res call({
    Object? selectedStageDegree = freezed,
  }) {
    return _then(_value.copyWith(
      selectedStageDegree: selectedStageDegree == freezed
          ? _value.selectedStageDegree
          : selectedStageDegree // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StageCopyWith<$Res> implements $StageStateCopyWith<$Res> {
  factory _$StageCopyWith(_Stage value, $Res Function(_Stage) then) =
      __$StageCopyWithImpl<$Res>;
  @override
  $Res call({int selectedStageDegree});
}

/// @nodoc
class __$StageCopyWithImpl<$Res> extends _$StageStateCopyWithImpl<$Res>
    implements _$StageCopyWith<$Res> {
  __$StageCopyWithImpl(_Stage _value, $Res Function(_Stage) _then)
      : super(_value, (v) => _then(v as _Stage));

  @override
  _Stage get _value => super._value as _Stage;

  @override
  $Res call({
    Object? selectedStageDegree = freezed,
  }) {
    return _then(_Stage(
      selectedStageDegree: selectedStageDegree == freezed
          ? _value.selectedStageDegree
          : selectedStageDegree // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Stage with DiagnosticableTreeMixin implements _Stage {
  const _$_Stage({this.selectedStageDegree = 0});

  @JsonKey()
  @override // for NullSafety, it's required to assign a default value
  final int selectedStageDegree;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StageState(selectedStageDegree: $selectedStageDegree)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StageState'))
      ..add(DiagnosticsProperty('selectedStageDegree', selectedStageDegree));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Stage &&
            const DeepCollectionEquality()
                .equals(other.selectedStageDegree, selectedStageDegree));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedStageDegree));

  @JsonKey(ignore: true)
  @override
  _$StageCopyWith<_Stage> get copyWith =>
      __$StageCopyWithImpl<_Stage>(this, _$identity);
}

abstract class _Stage implements StageState {
  const factory _Stage({int selectedStageDegree}) = _$_Stage;

  @override // for NullSafety, it's required to assign a default value
  int get selectedStageDegree;
  @override
  @JsonKey(ignore: true)
  _$StageCopyWith<_Stage> get copyWith => throw _privateConstructorUsedError;
}
