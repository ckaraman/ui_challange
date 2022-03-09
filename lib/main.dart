import 'package:flutter/material.dart';
import 'package:ui_challange/pages/detail_page.dart';
import 'package:ui_challange/pages/first_page.dart';
import 'package:ui_challange/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> pageList = <Widget>[
    const FirstPage(),
    const DetailPage(),
    const IntroPage(),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: pageList[_selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            unselectedItemColor: const Color(0xfff05a22).withOpacity(0.3),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  // label: 'Home',
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: 'Notifications'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark), label: 'bookmark'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xfff05a22),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
