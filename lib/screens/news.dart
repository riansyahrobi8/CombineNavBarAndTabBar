import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  final String url = "https://api.banghasan.com/quran/format/json/surat";
  List data;

  Future<String> getData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {'accept': 'application/json'});
    if (this.mounted) {
      setState(() {
        var content = json.decode(res.body);
        data = content['hasil'];
      });
    }
    return 'success';
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24.0),
      child: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ListTile(
                    leading: Text(
                      data[index]['nomor'],
                      style: TextStyle(fontSize: 30.0),
                    ),
                    title: Text(
                      data[index]['nama'],
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      data[index]['type'] == 'mekah'
                          ? Icons.location_city
                          : Icons.change_history,
                      size: 30.0,
                    ),
                    subtitle: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Arti: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Flexible(
                              child: Text(
                                data[index]['arti'],
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 15.0),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Jumlah ayat: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(data[index]['ayat'])
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "Diturunkan: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(data[index]['type'])
                          ],
                        )
                      ],
                    ),
                  ),
                  ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: Text("Lihat Detail"),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Text("Dengarkan"),
                        onPressed: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
