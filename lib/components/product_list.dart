import 'package:design/models/cart.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<Cart>
      carts; // variable carts yang berfungsi menampung list data, tipenya menggunakan list dan struktur datanya berupa class Cart pada models

  ProductList(this.carts); // constructor untuk meminta data

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      // bila carts kosong
      child: carts.isEmpty
          ? Center(
              child: Text(
                "No transaction Data",
                style: Theme.of(context).textTheme.title,
              ),
            )
          : ListView.builder(
              itemCount: carts
                  .length, // jumlah itemnya berdasarkan jumlah data yang ada didalam carts
              // bila keranjangnya terisi
              itemBuilder: (BuildContext context, index) {
                //  didalam builder ini widget akan dilooping sebanyak jumlah data
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 2)),
                        child: Text(
                          carts[index].qty.toString(),
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            carts[index].title,
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            "Harga: Rp. " +
                                carts[index].harga.toStringAsFixed(0),
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
