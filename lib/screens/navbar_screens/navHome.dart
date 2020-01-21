import 'package:design/screens/navbar_screens/firstPage.dart';
import 'package:design/screens/navbar_screens/secondPage.dart';
import 'package:design/screens/navbar_screens/thirdPage.dart';
import 'package:flutter/material.dart';

class NavBottomScreen extends StatefulWidget {
  @override
  _NavBottomScreenState createState() => _NavBottomScreenState();
}

class _NavBottomScreenState extends State<NavBottomScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold);
  final pageOptions = [FirstPage(), SecondPage(), ThirdPage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School")),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
