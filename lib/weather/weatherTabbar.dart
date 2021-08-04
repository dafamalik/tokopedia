import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/TokopediaView.dart';
import 'package:tokopedia/model/belajar.dart';
import 'package:tokopedia/model/listPhotosView.dart';
import 'package:tokopedia/weather/homeView.dart';

class WeatherTabbar extends StatefulWidget {


  @override
  _WeatherTabbarState createState() => _WeatherTabbarState();
}

class _WeatherTabbarState extends State<WeatherTabbar> {

  var screen = [
    HomeVIew(),
    TokopediaView(),
    ListPhotosView(),
    Belajar(),
  ];

  var crntIndex = 0;

  void _onSelectedTab(value){

    setState(() {
      crntIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[crntIndex],
      bottomNavigationBar : BottomNavigationBar(
        backgroundColor: Color(0xFF0A214E),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_sharp),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        currentIndex: crntIndex,
        selectedItemColor: Color(0xFF0A214E),
        unselectedItemColor: Colors.grey,
        onTap: (e) => {this._onSelectedTab(e)},
      ),
    );
  }
}
