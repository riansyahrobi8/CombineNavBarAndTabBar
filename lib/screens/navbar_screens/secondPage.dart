import 'package:design/components/add_new_item.dart';
import 'package:design/components/dashboard.dart';
import 'package:design/components/product_list.dart';
import 'package:design/models/cart.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final List<Cart> _carts = [
    // Cart(id: "RD1", title: "Shampo Sunsilk", harga: 20000, qty: 3),
    // Cart(id: "RD2", title: "Sabun Mandi", harga: 15000, qty: 2)
  ];

  void _openModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return AddNewItem(_addNewItem);
        });
  }

  void _addNewItem(String title, double harga, int qty) {
    final newItem = Cart(
        id: DateTime.now().toString(), title: title, harga: harga, qty: qty);
    setState(() {
      _carts.add(newItem);
    });
  }

  void _resetCart() {
    setState(() {
      _carts.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Bag"),
        actions: <Widget>[
          FlatButton(
            child: Icon(
              Icons.clear,
              color: Colors.white,
            ),
            onPressed: () => _resetCart(),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[Dashboard(_carts), ProductList(_carts)],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openModal(context),
      ),
    );
  }
}
