import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ramdam_app/pages/locBind.dart';
import 'package:ramdam_app/reUse/reUseText.dart';

class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                newMethodSehri(
                  'আজকের সেহরির শেষ সময় ',
                  finalValue.sehriFinal,
                  Colors.red,
                  Colors.black,
                  Icons.food_bank,
                ),
                reuseSizeboxWidth(15),
                newMethodSehri('আজকের ইফতারের সময় ', finalValue.ifterFinal,
                    Colors.black, Colors.red, Icons.food_bank),
                reuseSizeboxWidth(15),
                newMethodSehri('আজকের সূর্যোদয় সময় ', finalValue.finalSunrise,
                    Colors.red, Colors.yellow, Icons.circle),
                reuseSizeboxWidth(15),
                newMethodSehri('আজকের মধ্যাহ্ন সময় ', finalValue.dohorFinal,
                    Colors.red, Colors.greenAccent, Icons.circle),
                reuseSizeboxWidth(15),
                newMethodSehri('আজকের সূর্যাস্ত সময়  ', finalValue.finalSunset,
                    Colors.black, Colors.redAccent, Icons.circle),
                reuseSizeboxWidth(15),
                newMethodSehri('আজকের মধ্য রাত্রি   ', finalValue.tahajjud,
                    Colors.red, Colors.blue, Icons.circle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
