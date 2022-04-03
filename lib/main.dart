import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import 'app.dart';

void main() async {
  // use device locale
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    ProviderScope(
      child: EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('ja'),
            Locale('zh', 'hant')
          ],
          path: 'assets/i18n',
          fallbackLocale: const Locale('en'),
          startLocale: const Locale('en'),
          child: const App()),
    ),
  );
}
