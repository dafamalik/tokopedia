import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tokopedia/model/photosModel.dart';

class PhotosWidget extends StatelessWidget {

  final PhotosModel data;

  const PhotosWidget({this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 8, left: 8),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          width: MediaQuery.of(context).size.width - 40,
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                    height: 80,
                    width: 80,
                    image: NetworkImage(data.url)),
              ),
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(data.title),
                  )),
            ],
          )),
    );
  }
}
