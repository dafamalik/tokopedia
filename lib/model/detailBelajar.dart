import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailBelajar extends StatelessWidget {

  final String name;
  final int age;
  final String type;

  DetailBelajar({String this.name, int this.age, String this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          children: [
            Text(name),
            Text(age.toString()),
            Text(type)
          ],
        ),
      ),
    ));
  }
}
