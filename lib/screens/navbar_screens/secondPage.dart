import 'package:design/components/dashboard.dart';
import 'package:design/components/product_list.dart';
import 'package:design/models/cart.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final List<Cart> _carts = [
    Cart(id: "RD1", title: "Shampo Sunsilk", harga: 20000, qty: 3),
    Cart(id: "RD2", title: "Sabun Mandi", harga: 15000, qty: 2)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Bag"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[Dashboard(_carts), ProductList(_carts)],
        ),
      ),
    );
  }
}
