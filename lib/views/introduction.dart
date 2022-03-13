import 'package:flutter/material.dart';
import 'package:app/views/home.dart';
import 'package:app/consts/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.app_name.tr()),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(LocaleKeys.button_start_game.tr()),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }),
            );
          },
        ),
      ),
    );
  }
}
