import 'package:design/screens/navbar_screens/navHome.dart';
import 'package:design/screens/places/places_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: NavBottomScreen(),
      theme: ThemeData(
          primaryColor: Colors.amber,
          accentColor: Colors.purpleAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              subhead: TextStyle(fontWeight: FontWeight.bold))),
      routes: {
        '/': (ctx) => NavBottomScreen(),
        '/places': (ctx) => PlacesScreen()
      },
    );
  }
}
