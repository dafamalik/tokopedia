import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeVIew extends StatefulWidget {

  @override
  _HomeVIewState createState() => _HomeVIewState();
}

class _HomeVIewState extends State<HomeVIew> {

  var dataToday = [
    {"jam": "14:00","derajat": "32'", "image": "asset/image/paimon.jpg"},
    {"jam": "15:00","derajat": "20'", "image": "asset/image/paimon.jpg"},
    {"jam": "16:00","derajat": "30'", "image": "asset/image/paimon.jpg"},
    {"jam": "17:00","derajat": "19'", "image": "asset/image/paimon.jpg"},
  ];

  Widget header() {
    return Container(
      height: 150,
      margin: EdgeInsets.only(left: 8, right: 8, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text("San Fransisco", style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text("May 28.2021", style: TextStyle(
                color: Colors.white
            ),),
          ),
      Container(
        margin: EdgeInsets.only(left: 8, right: 8, top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                iconSize: 26,
                color: Colors.white,
                icon: Icon(Icons.home),
                onPressed: () => {print("press")}),
            IconButton(
                iconSize: 26,
                color: Colors.white,
                icon: Icon(Icons.notifications_active_sharp),
                onPressed: () => {print("press")}),
          ],
        ),
      ),
        ],
      ),
    );
  }

  Widget weather() {
    return Container(
      height: 300,
      child: Column(
        children: [
        ClipRRect(
          child: Image(
            image: AssetImage("asset/image/paimon.jpg"),

          ),
        ),
          Container(
            height: 50,
            margin: EdgeInsets.only(left: 16, right: 16, top: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.transparent),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Temp",style: TextStyle(
                          color: Colors.white
                        ),),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text("32'",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Wind",style: TextStyle(
                            color: Colors.white
                        ),),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text("10Km/h",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Humidity",style: TextStyle(
                            color: Colors.white
                        ),),
                        Container(
                          margin: EdgeInsets.only(top: 8),
                          child: Text("75%",style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget today() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today", style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                ),),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  onPressed: () {},
                  child: const Text('View Full Report'),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            margin:  EdgeInsets.only(top: 8, left: 8, right: 8),
            child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataToday.length,
                  itemBuilder: (context, index) {
                    return Container(
                          padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                          margin: EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.transparent),
                      width: 150,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage(dataToday[index]["image"]),
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(dataToday[index]["jam"],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white
                                            )),
                                    Text(dataToday[index]["derajat"],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white
                                            ))
                                  ],
                                ),
                          ],
                        ),
                    );
                  }),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color(0xFF0A214E),
          child: SingleChildScrollView(
            child: Column(
              children: [
                  header(),
                  weather(),
                  today(),
              ],
            ),
          ),
        ));
  }
}
