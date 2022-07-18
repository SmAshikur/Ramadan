import 'package:flutter/material.dart';
import 'package:ramdam_app/clock/back.dart';
import 'package:ramdam_app/clock/clock.dart';
import 'package:ramdam_app/noti.dart';
import 'package:ramdam_app/pages/PageThree.dart';
import 'package:ramdam_app/pages/pageTwo.dart';
import 'package:ramdam_app/reUse/reUseText.dart';
import 'package:ramdam_app/theme.dart';

class Alarm extends StatefulWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  _AlarmState createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    ClockPage(),
    Center(
      child: Text('hi'),
    ),
    Back()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color(0xFF2D2451),
      appBar: AppBar(
        backgroundColor: CustomColors.menuBackgroundColor,
        title: Text('hi'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 40.0,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
            iconSize: 40.0,
          )
        ],
      ),
      body: Container(
          color: Color(0xFF2D2F41).withOpacity(0.8),
          child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: navBottom(),
    );
  }

  BottomNavigationBar navBottom() {
    return BottomNavigationBar(
      // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm_add),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.exit_to_app),
          label: 'Home',
        )
      ],
      mouseCursor: SystemMouseCursors.grab,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.greenAccent,
      onTap: _onItemTapped,
      unselectedItemColor: Colors.white,
      backgroundColor: CustomColors.menuBackgroundColor,
    );
  }
}
