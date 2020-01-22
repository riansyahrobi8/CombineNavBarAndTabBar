import 'package:design/components/list_category.dart';
import 'package:flutter/material.dart';
import 'package:design/dummy_data.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
      body: GridView(
        padding: EdgeInsets.all(10.0),
        children: CATEGORY_DUMMY_DATA
            .map((cat) => ListCategory(cat.id, cat.title, cat.des, cat.image))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
