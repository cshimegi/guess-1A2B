import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:app/states/stage_state.dart';

final stageProvider = StateNotifierProvider<StageNotifier, StageState>(
  (ref) => StageNotifier(const StageState()),
);

class StageNotifier extends StateNotifier<StageState> {
  StageNotifier(StageState state) : super(state);
  // since state is immutable, use copyWith to copy it
  void setSelectedStage(int stageDegree) {
    state = state.copyWith(selectedStageDegree: stageDegree);
  }
}
