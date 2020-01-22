import 'package:design/components/list_places.dart';
import 'package:design/dummy_data.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final route =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = route['id'];
    final title = route['title'];
    final placeLists = PLACES_DUMMY_DATA.where((place) {
      return place.category == id;
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Wisata $title"),
      ),
      body: ListView.builder(
        itemCount: placeLists.length,
        itemBuilder: (ctx, index) {
          return ListPlace(placeLists[index].id, placeLists[index].name,
              placeLists[index].image, placeLists[index].des);
        },
      ),
    );
  }
}
