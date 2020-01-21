import 'package:design/models/cart.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final List<Cart> _listCart;
  Dashboard(this._listCart);

  // getter untk mendapatkan total item
  int get totalItem {
    // penghitungan math
    return _listCart.fold(0, (sum, item) {
      return sum += item.qty;
    });
  }

  // getter untuk mendapatkan total harga
  double get totalPrice {
    return _listCart.fold(0, (sum, item) {
      return sum += item.harga;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "Total Item",
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  "${totalItem.toString()} pcs",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "Total Belanja",
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  totalPrice.toStringAsFixed(0),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
