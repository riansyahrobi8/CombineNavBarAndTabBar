import 'package:design/screens/home.dart';
import 'package:design/screens/navbar_screens/navHome.dart';
import 'package:design/screens/news.dart';
import 'package:design/screens/popular.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Robi Dahariansyah"),
//           backgroundColor: Colors.red[800],
//           bottom: TabBar(
//             controller: controller,
//             tabs: <Widget>[
//               Tab(icon: Icon(Icons.home)),
//               Tab(icon: Icon(Icons.note)),
//               Tab(icon: Icon(Icons.poll))
//             ],
//             indicatorColor: Colors.white,
//           ),
//         ),
//         body: TabBarView(
//           controller: controller,
//           children: <Widget>[Popular(), Home(), News()],
//         ),
//       ),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBottomScreen(),
      theme: ThemeData(
          primaryColor: Colors.amber,
          accentColor: Colors.purpleAccent,
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))),
    );
  }
}
