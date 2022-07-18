import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ramdam_app/clock/clock.dart';
import 'package:ramdam_app/clock/mainClock.dart';
import 'package:ramdam_app/pages/locBind.dart';
import 'package:ramdam_app/reUse/reUseText.dart';
import 'package:ramdam_app/theme.dart';

class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {});
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(5, 2, 2, 2),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusetText(UserLocation.hijriDayAr, Colors.black, 15),
                      reusetText(UserLocation.hijriDayEn, Colors.black, 20),
                      reuseSizeboxWidth(3),
                      reusetText(finalValue.bnDay, Colors.black, 15),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        reusetText(
                            UserLocation.formattedDate, Colors.black, 17),
                        reusetText(
                            '${UserLocation.hijriMonth}, ${UserLocation.hijriDay}'
                            ' '
                            '${UserLocation.hijriYear}',
                            Colors.black,
                            20),
                        reusetText(
                            '${UserLocation.country},  ${UserLocation.city} ',
                            Colors.black,
                            18),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            reuseSizeBox(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // height: 170,
                  child: Container(
                      decoration: gradiebtdec(Colors.red, Colors.blue),
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 150,
                      width: 150,
                      child: ClockView()),
                ),
              ],
            ),
            reuseSizeBox(30),
            Column(
              children: [
                reusetText(finalValue.msg, Colors.black, 20),
                reuseSizeBox(25),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      timeLeftCol(finalValue.showHour.toString(), 'ঘণ্টা '),
                      //reuseSizeboxWidth(5),
                      reusetText(':', Colors.black, 50),
                      // reuseSizeboxWidth(5),
                      timeLeftCol(finalValue.showMinit.toString(), 'মিনিট'),
                      //reuseSizeboxWidth(5),
                      reusetText(':', Colors.black, 50),
                      // reuseSizeboxWidth(5),
                      timeLeftCol(finalValue.showSecomd.toString(), 'সেকেন্ড ')
                    ],
                  ),
                ),
              ],
            ),
            reuseSizeBox(20),
            reusetText(finalValue.msgTwo, Colors.purple, 15),
            reuseSizeBox(40),
            reusetText('এখন', Colors.black, 30),
            Icon(Icons.keyboard_arrow_down),
            reuseSizeBox(10),
            Container(
              height: 160,
              width: 200,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
              decoration: gradiebtdec(Color(0xFF5584BC), Color(0xFF242634)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                // scrollDirection: Axis.horizontal,
                children: [
                  reusetText(finalValue.currentTime, Colors.white, 15),
                  reusetText(finalValue.namaj, finalValue.Textcolor, 25),
                  reusetText(finalValue.nofol, Colors.white, 18),
                  reusetText(finalValue.nofolTwo, Colors.white, 18),
                ],
              ),
            ),
            reuseSizeBox(40),
            newMethodop(),
            reuseSizeBox(40),
            newMethodopp(),
            reuseSizeBox(40),
            SizedBox(
              height: 200,
              child: ListView(
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
                  newMethodSehri(
                      'আজকের সূর্যাস্ত সময়  ',
                      finalValue.finalSunset,
                      Colors.black,
                      Colors.redAccent,
                      Icons.circle),
                  reuseSizeboxWidth(15),
                  newMethodSehri('আজকের মধ্য রাত্রি   ', finalValue.tahajjud,
                      Colors.red, Colors.blue, Icons.circle),
                ],
              ),
            ),
            reuseSizeBox(40),
            newMethodoppp(),
            reuseSizeBox(40),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sunCon(
                      finalValue.riseHour.abs().toString(),
                      finalValue.riseMintue.abs().toString(),
                      finalValue.riseSec.abs().toString(),
                      finalValue.riseMintue >= 0
                          ? 'সূর্যদয়ের বাকি'
                          : 'আজ সূর্য উঠেছে'),
                  sunCon(
                      finalValue.setHour.abs().toString(),
                      finalValue.setMintue.abs().toString(),
                      finalValue.setSec.abs().toString(),
                      finalValue.setMintue >= 0
                          ? 'সূর্যাস্তের বাকি'
                          : 'সূর্যাস্ত হয়েছে'),
                ],
              ),
            ),
            reuseSizeBox(40),
          ],
        ),
      ),
    );
  }
}
