import 'package:flutter/cupertino.dart';
import 'package:tokopedia/model/photosModel.dart';

class NameWidget extends StatelessWidget {
 final PhotosModel data;

  const NameWidget({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 60,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
           Image(
            height: 40,
               width: 40,
               image: NetworkImage(data.url)),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(data.title),
                )),
          ],
        ));
  }
}
