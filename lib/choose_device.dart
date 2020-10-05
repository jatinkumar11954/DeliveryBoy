import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import 'maps_receiver.dart';

class ChooseDevice extends StatefulWidget {
  @override
  State createState() => ChooseDeviceState();
}

class ChooseDeviceState extends State<ChooseDevice> {
  static final databaseReference = FirebaseDatabase.instance.reference();

  static double currentLatitude = 0.0;
  static double currentLongitude = 0.0;

  Map<String, double> currentLocation = new Map();
  String error;

  String deviceid = 'Unknown';

  List<String> list = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Choose device to track')),
        body: FutureBuilder<List<String>>(
            future: databaseReference.once().then((DataSnapshot snapshot) {
              Map<dynamic, dynamic> values = snapshot.value;
              values.forEach((key, values) {
                list.add(key);
              });
              return list;
            }),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.connectionState == ConnectionState.done)
                return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MapsReceiver(deviceid: snapshot.data[index])),
                          );
                        },
                        child: Card(
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            height: 50,
                            width: 240,
                            child: Text('Device ID : ' + list[index]),
                          ),
                        ),
                      );
                    },
                    itemCount: list.length);
            }));
  }
}
