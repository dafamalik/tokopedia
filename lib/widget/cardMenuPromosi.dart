import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/model/menuPromosiModel.dart';
import '../daftarPembelian.dart';
import 'package:tokopedia/daftarPembelian.dart';

class CardMenuPromosi extends StatelessWidget {

  final MenuPromosiModel menuPromosiModel;

  CardMenuPromosi({this.menuPromosiModel});

   void moveToDetail(MenuPromosiModel menuPromosiModel, BuildContext context) {
     print(menuPromosiModel.name);

     Navigator.of(context).push(
         MaterialPageRoute(builder: (context) =>
             DaftarPembelian(menuPromosiModel: menuPromosiModel)
         ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: InkWell(
        onTap: () => {
          moveToDetail(menuPromosiModel, context)
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(menuPromosiModel.image),
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Container(
                  height: 48,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 8, left: 4, right: 4),
                  child: Text(menuPromosiModel.name,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12)
                  )
              ),
            ),

          ],
        ),
      ),
    );
  }
}
