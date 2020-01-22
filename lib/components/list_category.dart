import 'package:flutter/material.dart';

class ListCategory extends StatelessWidget {
  final String id;
  final String title;
  final String des;
  final String imageUrl;

  ListCategory(this.id, this.title, this.des, this.imageUrl);

  void goToNewScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/places',
        arguments: {'id': id, 'title': title, 'des': des});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToNewScreen(context),
      highlightColor: Colors.white.withAlpha(30),
      splashColor: Colors.white.withAlpha(20),
      child: Card(
        elevation: 5,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Image.network(
                  imageUrl,
                  height: 65,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Center(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
