import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:app/consts/locale_keys.g.dart';
import 'package:app/viewModels/stage_provider.dart';

class StageView extends HookConsumerWidget {
  const StageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int selectedDegree = ref.watch(stageProvider).selectedStageDegree;

    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.stage_title
            .tr(namedArgs: {'stage': selectedDegree.toString()})),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Text('Selected degree is $selectedDegree'),
          )
        ],
      ),
    );
  }
}
