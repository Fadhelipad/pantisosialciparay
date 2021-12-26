import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page_petugas.dart';

class HomeWidgetPetugas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWidgetPetugasState();
  }


}
class HomeWidgetPetugasState extends State<HomeWidgetPetugas>{
  List aktivitas = ["berita 1","berita 2","berita 3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue[200],
      ),
      body: Container(
        color: Colors.grey[200],
        padding: EdgeInsets.all(10),
        child: Column(
          children:[
            Container(
                alignment: Alignment.centerLeft,
                child: Text("Selamat Datang,Petugas" )),

            getlistviewListDonasi(),
            getlistviewPengumuman(),
          ],
        ),
      ),
    );
  }
  getlistviewListDonasi() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("List Penjemputan Donasi"),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: aktivitas.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height:90,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Nama Donasi'),
                              subtitle: Text(
                                'Keterangan donasi',
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
    return Container(
      margin: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 2),
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePagePetugas())); },
                  child: Text('Confrim'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 2),
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePagePetugas())); },
                  child: Text('Detail'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 2),
                  onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePagePetugas())); },
                  child: Text('Selesai'),
                ),
              ],
            ),
        ],
      ),
    );

  }




}