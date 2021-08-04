import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/model/photosModel.dart';

class PhotosList extends StatelessWidget {

  final PhotosModel data;

  const PhotosList({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      margin: EdgeInsets.only(left: 8, right: 8, bottom: 4),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                  height: 40,
                  width: 40,
                  image: NetworkImage(data.url)),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Text(data.title),
                )),
          ],
        ));
  }
}
