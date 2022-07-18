//import 'dart:ffi';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import "package:hijri/hijri_calendar.dart";
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ramdam_app/home/one.dart';
import 'package:ramdam_app/home/three.dart';
import 'package:ramdam_app/home/two.dart';
import 'package:ramdam_app/main.dart';
import 'package:ramdam_app/noti.dart';
import 'package:ramdam_app/pages/alarm.dart';
import 'package:ramdam_app/pages/calender.dart';
import 'package:ramdam_app/pages/data.dart';
import 'package:ramdam_app/pages/function.dart';
import 'package:ramdam_app/pages/locBind.dart';
import 'package:ramdam_app/pages/pageTwo.dart';
//import 'package:ramdam_app/pages/locView.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:ramdam_app/reUse/reUseText.dart';
import 'package:geocoding/geocoding.dart';
import 'dart:convert';
import 'dart:async';

import 'package:ramdam_app/theme.dart';

// ignore: non_constant_identifier_names

class Pagethree extends StatefulWidget {
  const Pagethree({
    Key? key,
  }) : super(key: key);

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  @override
  initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      allFunc.hello();

      setState(() {});
    });

    //_getPTD();
    // GetAddressFromLatLong();
    setState(() {});

    _getPTD();
    GetAddressFromLatLong();
    super.initState();
    tz.initializeTimeZones();
  }

  late Data list;
  final String url =
      "http://api.aladhan.com/v1/timingsByCity?city=${UserLocation.city}%20division&country=${UserLocation.country}&tzname=Asia/Dhaka";
  Future _getPTD() async {
    http.Response res = await http.get(Uri.parse(url), headers: {
      "Accept":
          "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"
    });
    final data = jsonDecode(res.body);
    list = Data.fromJson(data);

    setState(() {
      UserLocation.hijri = list.data.date.hijri.date;
      UserLocation.hijriDay = list.data.date.hijri.day;
      UserLocation.hijriDayAr = list.data.date.hijri.weekday.ar;
      UserLocation.hijriDayEn = list.data.date.hijri.weekday.en;
      UserLocation.hijriMonth = list.data.date.hijri.month.en;
      UserLocation.hijriYear = list.data.date.hijri.year;
      UserLocation.english = list.data.timings.dhuhr;
      UserLocation.dhohor = list.data.timings.dhuhr;
      UserLocation.asr = list.data.timings.asr;
      UserLocation.fajar = list.data.timings.fajr;
      UserLocation.magrib = list.data.timings.maghrib;
      UserLocation.esa = list.data.timings.isha;
      UserLocation.sehri = list.data.timings.imsak;
      UserLocation.iftar = list.data.timings.sunset;
      UserLocation.sunrise = list.data.timings.sunrise;
      //UserLocation.sunmid = list.data.timings.midnight;
      UserLocation.midNight = list.data.timings.midnight;
      // UserLocation.hijri = list.data.date.hijri.date.toFormat('MMMM, dd yyyy')
    });
  }

  Future<void> GetAddressFromLatLong() async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(UserLocation.lat, UserLocation.long);
    // print(placemarks);
    Placemark place = placemarks[0];

    var Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {
      UserLocation.country = placemarks[0].country!;
      UserLocation.city = placemarks[0].locality!;
    });
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    One(),
    Three(),
    Calender(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var _today = HijriCalendar.now();
    //print(object)
    //UserLocation.hijri = _today.toFormat('MMMM, dd yyyy');
    UserLocation.formattedTime = DateFormat(' hh:mm:ss a').format(now);
    UserLocation.formattedTimeM = DateFormat.Hm().format(now);
    UserLocation.formattedDate = DateFormat('MMMM, dd yyyy').format(now);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.menuBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.alarm),
            iconSize: 40.0,
          )
        ],
        title: Text(
          'তোহফায়ে রমাদান',
          style: const TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const PageTwo()));
            //  NotificationService().showNotification(1, "title", "body", 10);
            //print('object');
          },
          //tooltip: 'hello',
          icon: Icon(Icons.menu),
          iconSize: 40,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: reuseOpacity(0.85),
            ),
            Center(
              child: reuseOpacityTwo(Color(0xFFf4f4fd), 0.9),
            ),
            _widgetOptions.elementAt(_selectedIndex),
          ],
        ),
      ),
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
          icon: Icon(Icons.book),
          label: 'Duya',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_rounded),
          label: 'Calender',
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      onTap: _onItemTapped,
      unselectedItemColor: Colors.white,
      backgroundColor: CustomColors.menuBackgroundColor,
    );
  }
}
