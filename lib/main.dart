import 'package:flutter/material.dart';
import 'package:app/views/introduction.dart';
import 'package:app/consts/system.dart';

void main() {
  runApp(const GuessGameApp());
}

class GuessGameApp extends StatelessWidget {
  const GuessGameApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(primaryColor: Colors.white24),
      home: const IntroductionScreen(),
    );
  }
}
