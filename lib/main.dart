import 'package:flutter/material.dart';
import 'package:tokopedia/model/mainTabbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MainTabbar()
    );
  }
}