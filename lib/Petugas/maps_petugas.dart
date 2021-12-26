import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'home_page_petugas.dart';



class Mapspetugas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MapsPetugasState();
  }
}

class MapsPetugasState extends State<Mapspetugas> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng( -6.914744, 107.609810),
    zoom: 14,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(-6.914744,  107.609810),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    appBar: AppBar(
      title: Text("Maps"),
    ) ,
      body: Column(
        children: [
          Container(
            width: 400,
            height: 300,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child:
            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 2),
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePagePetugas())); },
                  child: Text('Direction'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 2),
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePagePetugas())); },
                  child: Text('Detail'),
                ),
              ],
            ),

          )
        ],
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
