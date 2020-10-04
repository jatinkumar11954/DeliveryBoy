import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';
import 'package:device_info/device_info.dart';
import 'package:firebase_database/firebase_database.dart';

class MapsHost extends StatefulWidget {
  @override
  State createState() => MapsHostState();
}

class MapsHostState extends State<MapsHost> {
  Map<String, Marker> _markers = {};
  Marker marker;
  void showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text("done"),
    ));
  }

  var deviceInfo = DeviceInfoPlugin();

  final databaseReference = FirebaseDatabase.instance.reference();


  LocationData currentLocation;
  var locationSubcription;

  Location location = new Location();
  String error;

  var _deviceid;

  Future<void> initDeviceId() async {
    var deviceid;
    deviceid = await deviceInfo.androidInfo;

    if (!mounted) return;

    setState(() {
      _deviceid = deviceid.hashCode.toString();
    });
  }

  void UpdateDatabase() {
    databaseReference.child(_deviceid ?? "unknown").set({
      'latitude': currentLocation.latitude,
      'longitude': currentLocation.longitude
    });
  }

  @override
  void initState() {
    super.initState();
    initDeviceId();

    initPlatformState();

    locationSubcription = location.onLocationChanged.listen((result) {
      currentLocation = result;
      UpdateDatabase();
    }, onDone: UpdateDatabase);
    _markers.clear();
    final marker = Marker(
      markerId: MarkerId("curr_loc"),
      position: LatLng(
          currentLocation?.latitude ?? 0, currentLocation?.longitude ?? 0),
      infoWindow: InfoWindow(title: 'Your Location'),
    );
    _markers["Current Location"] = marker;
  }

  void cameraMove() {
    locationSubcription = location.onLocationChanged.listen((result) {
      currentLocation = result;

      UpdateDatabase();
    }, onDone: UpdateDatabase);
  }

  void initPlatformState() async {
    LocationData my_location;
    try {
      my_location = await location.getLocation();
      error = "";
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED')
        error = 'Permission Denied';
      else if (e.code == 'PERMISSION_DENIED_NEVER_ASK')
        error =
            'Permission denied - please ask the user to enable it from the app settings';
      my_location = null;
    }
    setState(() {
      currentLocation = my_location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Host')),
        body: Builder(
            builder: (context) => Padding(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          width: double.infinity,
                          height: 350.0,
                          child: GoogleMap(
                            markers: _markers.values.toSet(),
                            initialCameraPosition: CameraPosition(
                                target: LatLng(currentLocation?.latitude ?? 0,
                                    currentLocation?.longitude ?? 0),
                                zoom: 17),
                            onMapCreated: (m) async{
                              currentLocation = await location.getLocation();
                              setState(() {
                                m.animateCamera(
                                  CameraUpdate.newCameraPosition(
                                    CameraPosition(
                                        target: LatLng(
                                            currentLocation?.latitude ?? 0,
                                            currentLocation?.longitude ?? 0),
                                        zoom: 17),
                                  ),
                                );
                              });

                              setState(() {
                                _markers.clear();
                                final marker = Marker(
                                  markerId: MarkerId("curr_loc"),
                                  position: LatLng(
                                      currentLocation?.latitude ?? 0,
                                      currentLocation?.longitude ?? 0),
                                  infoWindow:
                                      InfoWindow(title: 'Your Location'),
                                );
                                _markers["Current Location"] = marker;
                              });
                            },
                            onCameraMoveStarted: cameraMove,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                            'Lat/Lng: ${currentLocation?.latitude ?? 0}/${currentLocation?.longitude ?? 0}'),
                      ),
                      Text("Device ID: ${_deviceid ?? 0}"),
                    ],
                  ),
                )));
  }
}
