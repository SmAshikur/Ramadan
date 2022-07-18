import 'package:flutter/material.dart';
import 'package:ramdam_app/clock/mainClock.dart';
import 'dart:async';
import 'dart:math';

import 'package:ramdam_app/pages/locBind.dart';
import 'package:ramdam_app/reUse/reUseText.dart';
import 'package:ramdam_app/theme.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    var now = DateTime.now();

    //print(object)
    // UserLocation.hijri = _today.toFormat('MMMM, dd yyyy');
    // UserLocation.formattedTime = DateFormat('HH:mm:ss').format(now);
    //UserLocation.formattedDate = DateFormat('MMMM, dd yyyy').format(now);
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  UserLocation.formattedTime,
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                Text(
                  UserLocation.formattedDate,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                reuseSizeBox(60),
                ClockView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
