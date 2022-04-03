import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:app/views/app_view.dart';
import 'package:app/consts/locale_keys.g.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: LocaleKeys.app_name.tr(),
      theme: ThemeData(primaryColor: Colors.white24),
      home: HomePage(),
    );
  }
}
