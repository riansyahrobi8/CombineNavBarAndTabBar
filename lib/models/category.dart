import 'package:flutter/foundation.dart';

class Category {
  final String id;
  final String title;
  final String des;
  final String image;

  const Category({
    @required this.id,
    @required this.title,
    @required this.des,
    @required this.image,
  });
}
