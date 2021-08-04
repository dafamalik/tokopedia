import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/detailBelajar.dart';

class DafaMalik extends StatefulWidget {
  @override
  _DafaMalikState createState() => _DafaMalikState();
}

class _DafaMalikState extends State<DafaMalik> {
  String name = "";
  int age = 0;
  String type = "";
  bool isShowResult = false;

  void setName(String value) {
    print(value);

    setState(() {
      name = value;
    });
  }

  void setAge(int value) {
    print(value);

    setState(() {
      age = value;
    });
  }

  void setType(String value) {
    print(value);

    setState(() {
      type = value;
    });
  }

  void submitForm(String name, int age, String type) {
    setState(() {
      isShowResult = true;
    });

    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailBelajar(name: name, age: age, type: type,)
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(children: [
              TextFormField(onChanged: (value) => {setName(value)}),
              TextFormField(onChanged: (value) => {setAge(int.parse(value))}),
              TextFormField(onChanged: (value) => {setType(value)}),
              FlatButton(
              onPressed: () => {this.submitForm(name, age, type)}, child: Text("submit")),
              isShowResult
              ? Container()
              : Row(
                  children: [
                    Text("namaku: " + name),
                    Text("umurku: " + age.toString()),
                    Text("Typeku: " + type)
                  ],
                ),
        ]),
      ),
    ));
  }
}
