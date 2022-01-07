
import 'package:flutter/material.dart';
import 'package:kaizen_services/helpers/constants.dart';

import 'package:kaizen_services/views/about.dart';
import 'package:kaizen_services/views/description.dart';
import 'package:kaizen_services/views/homepage.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final children = [
    const HomePage(),
    const Description(),
    const About(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        currentIndex: _currentIndex,
        iconSize: 22,
        onTap: onTapped,
        selectedItemColor: kSemiDarkTeal,
        unselectedItemColor: kBrown,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xfff3f3f3)),

          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              backgroundColor: Color(0xfff3f3f3)),



          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Library',backgroundColor: Color(0xfff3f3f3)),


        ],
      ),
    );
  }
}
