import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWidgetState();
  }


}
class HomeWidgetState extends State<HomeWidget>{
  List aktivitas = ["berita 1","berita 2","berita 3"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      padding: EdgeInsets.all(10),
      child: Column(
        children:[
          Container(
            alignment: Alignment.centerLeft,
              child: Text("hallo nama")),
          getlistviewAktivitas(),
          getlistviewPengumuman(),
        ],
      ),
    );
  }
  getlistviewAktivitas() {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Aktivitas Dan Kegiatan"),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
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
          )
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
          Text("Pemberitahuan dan Pengumuman"),
          Expanded(
              child: ListView.builder(
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
          )
        ],
      ) ,
    );
  }




}