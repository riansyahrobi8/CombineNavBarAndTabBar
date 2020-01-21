import 'package:design/screens/home.dart';
import 'package:design/screens/news.dart';
import 'package:design/screens/popular.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kombinasi NavBar dan Tabbar`"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.note)),
            Tab(icon: Icon(Icons.poll))
          ],
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[Home(), News(), Popular()],
      ),
    );
  }
}
