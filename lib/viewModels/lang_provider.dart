import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:app/states/lang_state.dart';

final langProvider = StateNotifierProvider<LangNotifier, LangState>(
  (ref) => LangNotifier(const LangState()),
);

class LangNotifier extends StateNotifier<LangState> {
  LangNotifier(LangState state) : super(state);
  // since state is immutable, use copyWith to copy it
  void setLocale(BuildContext context, Locale locale) async {
    state = state.copyWith(locale: locale);
    await context.setLocale(state.locale);
  }
}
