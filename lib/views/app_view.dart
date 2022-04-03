import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:app/viewModels/app_provider.dart';
import 'package:app/viewModels/lang_provider.dart';
import 'package:app/consts/locale_keys.g.dart';
import 'package:app/views/dashboard_view.dart';
import 'package:app/views/stage_list_view.dart';
import 'package:app/views/history_view.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  List<PopupMenuEntry> _buildPopupMenuItems(BuildContext context) {
    return [
      PopupMenuItem(
        child: Text(LocaleKeys.app_language_en.tr()),
        value: 'en',
      ),
      PopupMenuItem(
        child: Text(LocaleKeys.app_language_ja.tr()),
        value: 'ja',
      ),
      PopupMenuItem(
        child: Text(LocaleKeys.app_language_tw.tr()),
        value: 'tw',
      )
    ];
  }

  void onSelectedLocale(BuildContext context, WidgetRef ref, String value) {
    Locale locale;
    switch (value.toString()) {
      case 'tw':
        locale = const Locale('zh', 'hant');
        break;
      case 'ja':
        locale = const Locale('ja');
        break;
      default:
        locale = const Locale('en');
        break;
    }
    ref.read(langProvider.notifier).setLocale(context, locale);
  }

  AppBar _buildAppBar(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(LocaleKeys.app_name.tr()),
      actions: [
        PopupMenuButton(
            elevation: 8,
            icon: const Icon(Icons.language),
            offset: Offset(0.0, AppBar().preferredSize.height),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            onSelected: (value) {
              onSelectedLocale(context, ref, value.toString());
            },
            itemBuilder: _buildPopupMenuItems),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Icon(Icons.logout),
        ),
      ],
    );
  }

  // TODO: integrate i18n
  final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
        icon: Icon(Icons.dashboard), label: 'Dashboard'),
    const BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Stage'),
    const BottomNavigationBarItem(icon: Icon(Icons.info), label: 'History')
  ];

  Widget _buildBottomNavigationBar(WidgetRef ref) {
    return BottomNavigationBar(
      items: items,
      currentIndex: ref.watch(footerProvider).selectedIndex,
      onTap: (index) =>
          ref.read(footerProvider.notifier).setSelectedFooter(index),
      type: BottomNavigationBarType.fixed,
    );
  }

  Widget _buildBody(WidgetRef ref) {
    int selectedViewIndex = ref.watch(footerProvider).selectedIndex;
    switch (selectedViewIndex) {
      case 1:
        return Container(
          padding: const EdgeInsets.all(4.0),
          margin: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue),
            borderRadius: BorderRadius.circular(10),
          ),
          child: StageListView(),
        );
      case 2:
        return const HistoryView();
      case 0:
      default:
        return const DashboardView();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _buildAppBar(context, ref),
      body: _buildBody(ref),
      bottomNavigationBar: _buildBottomNavigationBar(ref),
    );
  }
}
