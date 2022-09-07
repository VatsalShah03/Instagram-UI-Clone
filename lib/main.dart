import 'package:flutter/material.dart';
import 'package:instagram/activity_page.dart';
import 'package:instagram/home_page.dart';
import 'package:instagram/my_flutter_app_icons.dart';
import 'package:instagram/profile_page.dart';
import 'home_page.dart';
import 'search_page.dart';
import 'package:instagram/reel_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });}

    final List _pagesList = [
      const HomePage(),
      const SearchPage(),
      const Reel(),
      const ActivityPage(),
      const ProfilePage(),
    ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(color: Colors.black),
      ),
      home: Scaffold(
        body: _pagesList[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _navigateBottomBar,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 27,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 27,
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.icons8_instagram_reels,
                  size: 27, color: Colors.white),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.heart_empty,
                color: Colors.white,
                size: 22,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage('Assets/download (2).jpg'),
                  radius: 19,
                ),
                label: '')
          ],
        ),
      ),
    );
  }
}
