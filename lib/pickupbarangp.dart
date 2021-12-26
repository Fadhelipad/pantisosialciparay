import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'UI/input_field.dart';
import 'home_page.dart';
import 'home_profile_p.dart';

class PickupBarangP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PickupBarangPState();
  }
  }
  class PickupBarangPState extends State<PickupBarangP>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("PickUp "
            "Barang"),
      ),
      body :Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[200],
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomRight,
              heightFactor: 0.5,
              widthFactor: 0.5,
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(200.0)),
                color: const Color.fromRGBO(255, 255, 255, 0.4),
                child: Container(
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            Column(
              children: [
                   Container(
                    width: 500,
                    height: 600,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20,left: 20,right: 30),
                          child: Container(
                            child: TextField(
                                decoration: new InputDecoration(
                                  labelText: "Nama Barang",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                    borderSide: new BorderSide(
                                    ),
                                  ),
                                  //fillColor: Colors.green
                                ),
                          ),
                        ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 20,right: 30),
                            child: Container(
                              child: TextField(
                                decoration: new InputDecoration(
                                  labelText: "Nomer Telepon",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                    borderSide: new BorderSide(
                                    ),
                                  ),
                                  //fillColor: Colors.green
                                ),
                              ),
                            ),
                          ),
                        Container(
                            margin: EdgeInsets.only(top: 20,left: 20,right: 30),
                            child: Container(
                              child: TextField(
                                decoration: new InputDecoration(
                                  labelText: "Opsi Kendaraan Motor/Mobil",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                    borderSide: new BorderSide(
                                    ),
                                  ),
                                  //fillColor: Colors.green
                                ),
                              ),
                            ),
                          ),
                        Container(
                          margin: EdgeInsets.only(top: 20,left: 20,right: 30),
                          child: Container(
                            child: TextField(
                              decoration: new InputDecoration(
                                labelText: "Alamat",
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                  margin: EdgeInsets.all(15),
                                  child: Text(
                                    "Foto Barang",
                                    style :TextStyle(fontSize: 20),
                                  ),
                                ),
                          ],
                        ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(elevation: 2),
                                    onPressed: () {},
                                    child: Text('Upload'),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                            margin: EdgeInsets.all(10),
                              child: TextField(
                                decoration: new InputDecoration(
                                  labelText: "Pesan Untuk Petugas",
                                  fillColor: Colors.white,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(30.0),
                                    borderSide: new BorderSide(
                                    ),
                                  ),
                                  //fillColor: Colors.green
                                ),
                              ),
                            ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(elevation: 2),
                                onPressed: () {},
                                child: Text('Confrim'),
                              ),
                            ),
                            Container
                              (margin: EdgeInsets.all(15),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(elevation: 2),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                                },
                                child: Text('Batal'),
                              ),
                            )],
                        ),
                            ],
                        ),
                        ),
              ],
            ),
          ],
        ),
      ),
    );
  }





  }
