import 'package:flutter/material.dart';
import 'package:app/views/introduction.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:app/consts/locale_keys.g.dart';

void main() async {
  // use device locale
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // run app
  runApp(EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
        Locale('zh', 'hant')
      ],
      path: 'assets/i18n',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      child: const GuessGameApp()));
}

class GuessGameApp extends StatelessWidget {
  const GuessGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: LocaleKeys.app_name.tr(),
      theme: ThemeData(primaryColor: Colors.white24),
      home: const IntroductionScreen(),
    );
  }
}
