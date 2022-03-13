import 'package:flutter/material.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NewsBody();
  }
}

class NewsBody extends StatelessWidget {
  const NewsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Here is your achievements');
  }
}
