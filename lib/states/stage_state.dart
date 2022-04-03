import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'package:app/models/stage.dart';

part 'stage_state.freezed.dart';

@freezed
class StageState with _$StageState {
  const factory StageState({
    // for NullSafety, it's required to assign a default value
    @Default(0) int selectedStageDegree,
  }) = _Stage;
}
