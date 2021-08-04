import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tokopedia/model/photosList.dart';
import 'package:tokopedia/model/photosModel.dart';
import 'package:tokopedia/model/photosWidget.dart';

class ListPhotosView extends StatefulWidget {

  @override
  _ListPhotosViewState createState() => _ListPhotosViewState();
}

class _ListPhotosViewState extends State<ListPhotosView> {


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


  Widget photosBanner() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataPhoto.length,
        itemBuilder: (context, index) {
          return PhotosWidget(data: dataPhoto[index],);
        },
      ),
    );
  }

  Widget photosList() {
    return Container(
      height: 500,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
          itemCount: dataPhoto.length,
          itemBuilder: (context, index) {
            return PhotosList(data: dataPhoto[index]);
    },
    )
    );
  }

  // Widget barBottom() {
  //   return BottomNavigationBar(
  //       items: const <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.business),
  //           label: 'Business',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.school),
  //           label: 'School',
  //         ),
  //       ],
  //       currentIndex: _selectedIndex,
  //       selectedItemColor: Colors.amber[800],
  //       onTap: _onItemTapped,
  //     ),
  //   );
  // }

  @override
  void initState() {

    getDataFromApi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32,),
        decoration: BoxDecoration(
          color: Colors.grey[200]
        ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                photosBanner(),
                photosList(),
                ],
              ),
          ),
      ),
    );
  }
}
