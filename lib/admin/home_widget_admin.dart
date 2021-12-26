import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidgetAdmin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWidgetAdminState();
  }


}
class HomeWidgetAdminState extends State<HomeWidgetAdmin>{
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
                child: Text("Selamat Datang,Nama" )),

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Berita dan Aktivitas Hari ini"),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: aktivitas.length,
                  itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height:100,
                      width: MediaQuery.of(context).size.width,
                      child: Card
                        (clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            Image.asset('lib/assets/coming-soon.png'),
                            ListTile(
                              title: const Text('Card title 1'),
                              subtitle: Text(
                                'Secondary Text',
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
                      height:90,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Card title 1'),
                              subtitle: Text(
                                'Secondary Text',
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