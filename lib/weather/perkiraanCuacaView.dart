import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tokopedia/model/photosModel.dart';
import 'package:tokopedia/weather/todayWidget.dart';

class PerkiraanCuacaView extends StatefulWidget {

  @override
  _PerkiraanCuacaViewState createState() => _PerkiraanCuacaViewState();
}

class _PerkiraanCuacaViewState extends State<PerkiraanCuacaView> {

  var dataPhoto = [];

  void getDataFromApi() {
    var url = "https://jsonplaceholder.typicode.com/photos";

    http.get(url).then((value){

      final response = json.decode(value.body) as List;

      var photos = new List<PhotosModel>();

      Iterable list = response;

      photos =
          list.map((model) => PhotosModel.fromJSON(model)).toList();

      setState(() {
        dataPhoto = photos;
      });

    });
  }

  Widget AppBar() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Forcast Report", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Today", style: TextStyle(
                    fontSize: 16,
                      color: Colors.white
                  ),),
                  Text("mei 28.2021", style: TextStyle(
                      color: Colors.white
                  ),)
                ],
              ),
            )
          ],
        ),
    );
  }

  Widget header() {
    return Container(
      height: 200,
      child: Column(
        children: [
          AppBar(),
          Container(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataPhoto.length,
                itemBuilder: (context, index) {
                  return TodayWidget(data: dataPhoto[index]);
                }
            ),
          ),
        ],
      ),
    );
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
          padding: EdgeInsets.only(top: 32),
          color: Colors.blueGrey[800],
          child: SingleChildScrollView(
            child: Column(
              children: [
                header()
              ],
            ),
          ),
        ));
  }
}
