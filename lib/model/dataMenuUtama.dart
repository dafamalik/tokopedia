import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/model/menuPromosiModel.dart';
import 'menuUtamaModel.dart';

class DetailMenuUtama extends StatefulWidget {

  MenuUtamaModel menuUtamaModel;

  DetailMenuUtama({this.menuUtamaModel});

  @override
  _DetailMenuUtamaState createState() => _DetailMenuUtamaState();
}

class _DetailMenuUtamaState extends State<DetailMenuUtama> {


  Widget header() {
    return Container(
        height: 40,
        child: Text(widget.menuUtamaModel.name)
    );
  }

  @override
  void initState() {
    print("ini promotion name" + widget.menuUtamaModel.name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("daftar Pembelian")),
      body: Container(
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
            ],
          ),
        ),
      ),
    );
  }
}