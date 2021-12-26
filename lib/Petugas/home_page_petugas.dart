import 'package:flutter/material.dart';
import 'package:pantisosialciparay/Petugas/home_widget_petugas.dart';
import 'package:pantisosialciparay/Petugas/maps_petugas.dart';
import 'package:pantisosialciparay/donationp.dart';
import 'package:pantisosialciparay/home_profile_p.dart';
import 'package:pantisosialciparay/home_widget.dart';

class HomePagePetugas extends StatelessWidget {
  const HomePagePetugas({Key? key}) : super(key: key);

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
      'Index 1: Maps',
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
              AssetImage("lib/assets/donasi_icon.png"),
            ),
            label: 'Maps',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget getBody() {
    if(_selectedIndex == 0)
    {
      return HomeWidgetPetugas();
    }
    else if (_selectedIndex== 1)
    {
      return Mapspetugas();
    }
    else if (_selectedIndex== 2)
    {

      return HomeProfileP();

    }
    else {
      return HomeWidget();
    }


  }
}