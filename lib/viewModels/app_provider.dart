import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:app/states/app_state.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>(
  (ref) => CounterNotifier(const CounterState()),
);

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier(CounterState state) : super(state);
  // since state is immutable, use copyWith to copy it
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }
}

final footerProvider = StateNotifierProvider<FooterNotifier, FooterState>(
  (ref) => FooterNotifier(const FooterState()),
);

class FooterNotifier extends StateNotifier<FooterState> {
  FooterNotifier(FooterState state) : super(state);
  // since state is immutable, use copyWith to copy it
  void setSelectedFooter(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}
