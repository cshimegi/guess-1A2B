import 'package:flutter/material.dart';
import 'package:app/views/home.dart';
import 'package:app/consts/system.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Start games'),
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
