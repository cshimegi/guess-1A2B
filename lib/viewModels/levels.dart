import 'package:flutter/material.dart';
import 'package:app/models/level.dart';

class QuestionLevels extends StatefulWidget {
  const QuestionLevels({Key? key}) : super(key: key);

  @override
  QuestionLevelsState createState() => QuestionLevelsState();
}

class QuestionLevelsState extends State<QuestionLevels> {
  final levelNum = 10;
  List<Level> levels = <Level>[];

  @override
  void initState() {
    levels.addAll(List.generate(levelNum, (i) => Level('Level $i', i + 1)));
    super.initState();
  }

  Widget _buildList() {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: levelNum,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[300],
          child: ListTile(
            title: Text(
              levels[index].title.toString(),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              SnackBar snackBar =
                  SnackBar(content: Text("Tapped : ${levels[index].title}"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildList());
  }
}
