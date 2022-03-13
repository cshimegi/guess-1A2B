import 'package:flutter/material.dart';
import 'package:app/views/question.dart';
import 'package:app/views/news.dart';
import 'package:app/consts/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

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

  List<PopupMenuEntry> buildPopupMenuItems(BuildContext context) {
    return [
      PopupMenuItem(
        child: Text(LocaleKeys.app_language_en.tr()),
        value: 'en',
      ),
      PopupMenuItem(
        child: Text(LocaleKeys.app_language_ja.tr()),
        value: 'ja',
      ),
      PopupMenuItem(
        child: Text(LocaleKeys.app_language_tw.tr()),
        value: 'tw',
      )
    ];
  }

  void setSelectedLanguage(Locale locale) async {
    await context.setLocale(locale);
  }

  void onSelectedLocale(String value) {
    Locale locale;
    switch (value.toString()) {
      case 'tw':
        locale = const Locale('zh', 'hant');
        break;
      case 'ja':
        locale = const Locale('ja');
        break;
      default:
        locale = const Locale('en');
        break;
    }
    setSelectedLanguage(locale);
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(LocaleKeys.app_name.tr()),
      actions: [
        PopupMenuButton(
            elevation: 8,
            icon: const Icon(Icons.language),
            offset: Offset(0.0, AppBar().preferredSize.height),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.0),
                bottomRight: Radius.circular(8.0),
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
            ),
            onSelected: (value) {
              onSelectedLocale(value.toString());
            },
            itemBuilder: buildPopupMenuItems),
        const Padding(
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
