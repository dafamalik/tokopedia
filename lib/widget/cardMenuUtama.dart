import 'package:flutter/cupertino.dart';
import 'package:tokopedia/model/menuUtamaModel.dart';

class CardMenuUtama extends StatelessWidget {

  final MenuUtamaModel menuUtamaModel;

  CardMenuUtama({this.menuUtamaModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(menuUtamaModel.image),
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
                height: 48,
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 8, left: 4, right: 4),
                child: Text(menuUtamaModel.name, maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12))),
          ),

        ],
      ),
    );
  }
}
