import 'package:flutter/material.dart';
import 'package:pantisosialciparay/admin/input_berita.dart';
import 'package:pantisosialciparay/admin/list_donasi.dart';
import 'package:pantisosialciparay/donationp.dart';
import 'package:pantisosialciparay/edit_profilep.dart';
import 'package:pantisosialciparay/home_profile_p.dart';
import 'package:pantisosialciparay/home_widget.dart';

class HomePageAdmin extends StatelessWidget {
  const HomePageAdmin({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Input Berita',
      style: optionStyle,
    ),
    Text(
      'Index 2: List Donasi',
      style: optionStyle,
    ),
    Text("Index 3: Profil",
      style: optionStyle,
  ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  getBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/assets/sound.png"),
            ),
            label: 'Input Berita',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
          AssetImage("lib/assets/donasi_icon.png"),
           ),
            label: 'List Donasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget getBody() {
    if(_selectedIndex == 0)
    {
      return HomeWidget();
    }
    else if (_selectedIndex== 1)
    {
      return InputBerita();
    }
    else if (_selectedIndex== 2)
    {

      return InputDonasi();

    }
    else if (_selectedIndex== 3)
    {

      return HomeProfileP();

    }
    else {
      return HomeWidget();
    }


  }
}