import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/TokopediaView.dart';
import 'package:tokopedia/model/belajar.dart';
import 'package:tokopedia/model/listPhotosView.dart';

class MainTabbar extends StatefulWidget {


  @override
  _MainTabbarState createState() => _MainTabbarState();
}

class _MainTabbarState extends State<MainTabbar> {

  var screen = [
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
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
              currentIndex: crntIndex,
              selectedItemColor: Colors.green,
              onTap: (e) => {this._onSelectedTab(e)},
            ),
          );
  }
}
