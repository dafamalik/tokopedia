import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationApps extends StatefulWidget {

  @override
  _LocationAppsState createState() => _LocationAppsState();
}

class _LocationAppsState extends State<LocationApps> {

  var locationMassage = "";

  void getCurrentLocation() async {

    var position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    var lastPosition = await Geolocator().getLastKnownPosition();
    print(lastPosition);

    setState(() {
      locationMassage = "$position.latitude, $position.longitude";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_on,
              size: 46,
            color: Colors.blue,
            ),
            Text("Get user Location",
                style: TextStyle(
                color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
              ),),
            Text("position: $locationMassage"),
            FlatButton(
                onPressed: () => {
                  getCurrentLocation()
                },
                color: Colors.blue[800],
                child: Text("Get Current Location",
                style: TextStyle(
                  color: Colors.white,
                ),)),
          ],
        ),
      ),
    );
  }
}
