import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Donationp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DonationpState();
  }


}
class DonationpState extends State<Donationp> {
  List aktivitas = ["berita 1","berita 2","berita 3"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Donasi"),
      ),
      body: Container(
    color: Colors.grey[200],
      padding: EdgeInsets.all(10),
      child: Column(
        children:[
          Container(
              alignment: Alignment.centerLeft,
              child: Text( "Sudahkah Donasi Hari ini?")),
          getlistviewAktivitas(),
          getlistviewPengumuman(),
        ],
      ),
    ),
    );
  }
  getlistviewAktivitas() {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      margin: EdgeInsets.only(top: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
                      margin: EdgeInsets.all(25),
                      height:100,
                      width: 130,
                      child: Card(
                        color: Colors.green,
                      ),

                    ),
          Container(
            margin: EdgeInsets.all(25),
            height:100,
            width: 130,
            child: Card(
              color: Colors.green,
            ),

          ),


        ],
      ) ,
    );
  }

  getlistviewPengumuman() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("History Donasi"),
           ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: aktivitas.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height:70,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.green,
                      ),

                    );
                  })


  ]) ,
    );
  }




}