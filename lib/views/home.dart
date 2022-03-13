import 'package:flutter/material.dart';
import 'package:app/views/question.dart';
import 'package:app/views/news.dart';
import 'package:app/consts/system.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List screens = [const QuestionListScreen(), const NewsListScreen()];
  final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'List'),
    const BottomNavigationBarItem(icon: Icon(Icons.info), label: 'News')
  ];

  Widget buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: items,
      currentIndex: selectedIndex,
      onTap: onTapNavigationBar,
      type: BottomNavigationBarType.fixed,
    );
  }

  void onTapNavigationBar(int index) {
    // it's required to fire setState event
    setState(() {
      selectedIndex = index;
    });
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(appName),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Icon(Icons.logout),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: screens[selectedIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
