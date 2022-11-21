import 'package:flutter/material.dart';
import 'home.dart';

class Intropage extends StatefulWidget {
  @override
  State<Intropage> createState() => _IntropageState();
}

class _IntropageState extends State<Intropage> {
  List pages = [
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
    Homepage(),
  ];
  List<BottomNavigationBarItem> tabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
    BottomNavigationBarItem(
        icon: Icon(Icons.playlist_play_outlined), label: 'Coming Soon'),
    BottomNavigationBarItem(
        icon: Icon(Icons.download_outlined), label: 'Downloads'),
    BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
  ];
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    assert(tabs.length == pages.length);
    final bottomnavbar = BottomNavigationBar(
      iconSize: 33,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.black,
      items: tabs,
      currentIndex: _currentindex,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          _currentindex = value;
        });
      },
    );
    return Scaffold(
      body: pages[_currentindex],
      bottomNavigationBar: bottomnavbar,
    );
  }
}
