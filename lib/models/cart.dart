import 'package:flutter/foundation.dart';

class Cart {
  final String id;
  final String title;
  final double harga;
  final int qty;

  // constructor dimana secara default class ini akan meminta data
  Cart(
      {@required this.id,
      @required this.title,
      @required this.harga,
      @required this.qty});
}
