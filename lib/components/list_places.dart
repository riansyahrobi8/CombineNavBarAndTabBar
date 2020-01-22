import 'package:flutter/material.dart';

class ListPlace extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String des;

  ListPlace(this.id, this.name, this.image, this.des);

  void goToDetail(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: ListTile(
          leading: Image.network(image),
          title: Text(name),
          subtitle: Text(des.substring(0, 50) + '...'),
          onTap: () => goToDetail(context),
        ),
      ),
    );
  }
}
