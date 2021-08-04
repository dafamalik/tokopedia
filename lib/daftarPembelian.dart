import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/model/menuPromosiModel.dart';

class DaftarPembelian extends StatefulWidget {

 MenuPromosiModel menuPromosiModel;

 DaftarPembelian({this.menuPromosiModel});

  @override
  _daftarPembelian createState() => _daftarPembelian();
}

class _daftarPembelian extends State<DaftarPembelian> {


  Widget header() {
    return Container(
      height: 40,
      child: Text(widget.menuPromosiModel.name)
    );
  }

  @override
  void initState() {
   print("ini promotion name" + widget.menuPromosiModel.name);
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