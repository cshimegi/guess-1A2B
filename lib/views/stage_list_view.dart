import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:app/consts/locale_keys.g.dart';
import 'package:app/models/stage.dart';
import 'package:app/viewModels/stage_provider.dart';
import 'package:app/views/stage/stage_view.dart';

class StageListView extends HookConsumerWidget {
  StageListView({Key? key}) : super(key: key);

  // TODO: generate by smart way
  final List<Stage> stages = <Stage>[
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "1"}), 1),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "2"}), 2),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "3"}), 3),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "4"}), 4),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "5"}), 5),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "6"}), 6),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "7"}), 7),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "8"}), 8),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "9"}), 9),
    Stage(LocaleKeys.stage_title.tr(namedArgs: {'stage': "10"}), 10),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: stages.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: index == 0 ? Colors.amber[50] : Colors.amber[100 * index],
          child: ListTile(
            title: Text(
              stages[index].title.toString(),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              ref
                  .read(stageProvider.notifier)
                  .setSelectedStage(stages[index].degree);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StageView()),
              );
            },
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
