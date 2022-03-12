import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '1A2B Game',
        theme: ThemeData(primaryColor: Colors.blue[300]),
        home: Scaffold(
          appBar: AppBar(title: const Text('1A2B Game')),
          body: const RandomWords(),
        ));
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final entries = <WordPair>[].addAll(generateWordPairs().take(10));
  final List<int> colorCodes = <int>[600, 500, 100];

  Widget _buildList() {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        int colorCode = colorCodes[index % 3];

        return Container(
          height: 50,
          color: Colors.amber[colorCode],
          child: Center(child: Text(WordPair.random().asString)),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.grey,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Please select a level to challenge')),
        body: _buildList());
  }
}