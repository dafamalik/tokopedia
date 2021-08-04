import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/model/NameWidget.dart';
import 'package:http/http.dart' as http;
import 'package:tokopedia/model/photosModel.dart';

class Belajar extends StatefulWidget {

  @override
  _BelajarState createState() => _BelajarState();
}

class _BelajarState extends State<Belajar> {
  String name = "dafa";
  var dataName = [];

  void getDataFromApi() {
    var url = "https://jsonplaceholder.typicode.com/photos";

    http.get(url).then((value){

      final response = json.decode(value.body) as List;

      var photos = new List<PhotosModel>();

      Iterable list = response;

      photos =
        list.map((model) => PhotosModel.fromJSON(model)).toList();

      setState(() {
        dataName = photos;
      });

    });
  }

  void getDataName() {

    dataName.add("aa");
    dataName.add("dafa");
    dataName.add("azi");

    setState(() {
      dataName = dataName;
    });
  }

  Widget nameWidget(String yourName) {

    return Text(yourName);
  }

@override
  void initState() {
  getDataFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                nameWidget(name),
                Expanded(
                  child: ListView.builder(
                    itemCount: dataName.length,
                      itemBuilder: (context, index) {
                        return NameWidget(data: dataName[index]);
                      }
                  ),
                )
              ],
        ),
      ),
    )
    );
  }
}
