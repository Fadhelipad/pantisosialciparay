import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mapspetugas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MapsPetugasState();
  }
  }
  class MapsPetugasState extends State<Mapspetugas> {

    @override
    Widget build(BuildContext context) {
      // TODO: implement bui
      return Scaffold(
          appBar: AppBar(
          title: Text("Maps Petugas"),
      backgroundColor: Colors.blue[200],
      )
      );
  }
  }

