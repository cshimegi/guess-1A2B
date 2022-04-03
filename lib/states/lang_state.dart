import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'lang_state.freezed.dart';

@freezed
class LangState with _$LangState {
  const factory LangState({
    // for NullSafety, it's required to assign a default value
    @Default(Locale('en')) Locale locale,
  }) = _Lang;
}
