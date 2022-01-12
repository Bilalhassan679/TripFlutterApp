import 'package:flutter/material.dart';
import 'package:tripflutterapp/screens/nav_screens/bar_item_page.dart';
import 'package:tripflutterapp/screens/nav_screens/home_page.dart';
import 'package:tripflutterapp/screens/nav_screens/my_page.dart';
import 'package:tripflutterapp/screens/nav_screens/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        elevation: 0,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text('Bar'), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              title: Text('Search'), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Text('MyPage '), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
