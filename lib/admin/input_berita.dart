import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pantisosialciparay/pickupbarangp.dart';
import 'package:pantisosialciparay/transferp.dart';

class InputBerita extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return InputBeritaState();
  }


}
class InputBeritaState extends State<InputBerita> {
  List aktivitas = ["berita 1","berita 2","berita 3"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement bui
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Berita"),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20, left: 1, right: 200),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(60)),
              child: Text( "Sudahkah input aktivitas dan pengumuman hari ini?",
                style: TextStyle(fontSize: 14),
              ),
            ),

            getlistviewBerita(),
            getlistviewPengumuman(),




          ],
        ),
      ),
    );
  }
  getlistviewBerita() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("List Berita"),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: aktivitas.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height:80,
                      width: MediaQuery.of(context).size.width,
                      child: Card(clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Berita'),
                              subtitle: Text(
                                'Berita',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ],
                        ),
                      ),

                    );
                  })
          )
        ],
      ) ,
    );
  }

  getlistviewPengumuman() {
    return
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("List Berita"),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: aktivitas.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height:80,
                      width: MediaQuery.of(context).size.width,
                      child: Card(clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Berita'),
                              subtitle: Text(
                                'Berita',
                                style: TextStyle(color: Colors.black.withOpacity(0.6)),
                              ),
                            ),
                          ],
                        ),
                      ),

                    );
                  })
          )
        ],
      ) ,
    );
  }


}
