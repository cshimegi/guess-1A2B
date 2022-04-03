import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'app_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    // for NullSafety, it's required to assign a default value
    @Default(0) int count,
  }) = _Counter;
}

@freezed
class FooterState with _$FooterState {
  const factory FooterState({
    @Default(0) int selectedIndex,
  }) = _Footer;
}
