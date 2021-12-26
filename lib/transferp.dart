import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pantisosialciparay/admin/home_page_admin.dart';
import 'package:pantisosialciparay/donationp.dart';
import 'package:pantisosialciparay/home_page.dart';

import 'Petugas/home_page_petugas.dart';


class TransferP extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransferPState();
  }
  }

  class TransferPState extends State<TransferP>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transfer"),
      ),
      body:  ListView(
    children: [
    Card(
    clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.asset('lib/assets/donasi_icon.png'),
          ListTile(
            title: const Text('Nama Bank'),
            subtitle: Text(
              'A.N ....................',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
        ],
      ),
    ),
      Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.asset('lib/assets/donasi_icon.png'),
            ListTile(
              title: const Text('Nama Bank'),
              subtitle: Text(
                'A.N ....................',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,

        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Bukti Transfer",
            style :TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 2),
              onPressed: () {},
              child: Text('Upload'),
            ),
          )

        ],
      ),
      Row(
        children: [
          Container(
            margin: EdgeInsets.all(70),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 2),
              onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePagePetugas())); },
              child: Text('Confrim'),
            ),

          ),
          Container(margin: EdgeInsets.all(15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 2),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePageAdmin()));
              },
              child: Text('Batal'),
            ),
          )],
      )

    ],
    ),
    );
  }
  }