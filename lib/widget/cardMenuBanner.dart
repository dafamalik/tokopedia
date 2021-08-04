import 'package:flutter/cupertino.dart';
import 'package:tokopedia/model/menuBannerModel.dart';

class CardMenuBanner extends StatelessWidget {

  final MenuBannerModel menuBannerModel;

  CardMenuBanner({this.menuBannerModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(menuBannerModel.image)
          )
      ),
    );
  }
}
