import 'package:flutter/material.dart';
import 'package:ramdam_app/pages/alarm.dart';
import 'package:ramdam_app/pages/locBind.dart';
import 'package:ramdam_app/theme.dart';

reusetText(String title, Color color1, double size) {
  return Center(
    child: Text(
      title,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w900,
        color: color1,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Opacity reuseOpacityTwo(Color color, double op) {
  return Opacity(
    opacity: op,
    child: Container(
      color: color,
      height: 1200,
      width: 590,
    ),
  );
}

Opacity reuseOpacity(double op) {
  return Opacity(
    opacity: op.toDouble(),
    child: Image.asset(
      'assets/ashik3.jpg',
      height: 1200,
      width: 590,
      fit: BoxFit.fill,
    ),
  );
}

SizedBox reuseSizeBox(double height) {
  return SizedBox(
    height: height,
  );
}

timeLeftCol(String time, String somoy) {
  return Container(
    alignment: Alignment.center,
    width: 110,
    height: 130,
    decoration: gradiebtdec(Colors.green, Colors.blue),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        reusetText(time, Colors.white, 25),
        reuseSizeBox(5),
        reusetText(somoy, Colors.white, 16),
      ], //
    ),
    //;
    //
  );
}

SizedBox reuseSizeboxWidth(double width) {
  return SizedBox(
    width: width,
  );
}

Column newMethodSehri(
  String _title,
  String _num,
  Color color,
  Color color2,
  IconData iconData,
) {
  return Column(
    children: [
      Container(
        //alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 40,
              color: color2,
            ),
            reuseSizeBox(5),
            reusetText(_title, Colors.black, 15),
            reusetText(_num, Colors.black, 25),
          ],
        ),
        height: 180,
        width: 240,
        decoration: gradiebtdec(Colors.white10, Colors.white),
      )
    ],
  );
}

Container newMethodop() {
  return Container(
      margin: const EdgeInsets.all(10),
      //height: ,
      decoration: gradiebtdec(Colors.white70, Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reuseSizeBox(30),
          reusetText('আজকের ফরজ নামাজের ওয়াক্ত', Colors.black, 20),
          reuseSizeBox(10),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showNamaj('ফজর', finalValue.fajarFinal, Colors.white,
                    Colors.purple, Colors.red),
                showNamaj('যোহর', finalValue.dohorFinal, Colors.white,
                    Colors.purple, Colors.red),
                showNamaj('আসর', finalValue.asarFinal, Colors.white,
                    Colors.purple, Colors.red),
                showNamaj('মাগরিব', finalValue.magribFinal, Colors.white,
                    Colors.purple, Colors.red),
                showNamaj('ইশা', finalValue.eshaFinal, Colors.white,
                    Colors.purple, Colors.red),
              ],
            ),
          ),
          reuseSizeBox(30),
        ],
      ));
}

Container newMethodopp() {
  return Container(
      margin: const EdgeInsets.all(10),
      //height: ,
      decoration: BoxDecoration(
          color: Color(0xFFf4f4fd), borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reuseSizeBox(30),
          reusetText('গুরুত্বপূর্ণ নফল নামজের ওয়াক্ত', Colors.black, 19),
          reuseSizeBox(10),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showNamaj('ইশরাকের নামাজ', finalValue.israk, Colors.white,
                    Colors.blue, Colors.green),
                showNamaj('চাশতের নামাজ ', finalValue.chast, Colors.white,
                    Colors.blue, Colors.green),
                showNamaj('আওয়াবিনের নামাজ', finalValue.awabin, Colors.white,
                    Colors.blue, Colors.green),
                showNamaj('তাহাজ্জুদের নামাজ', finalValue.tahajjud,
                    Colors.white, Colors.blue, Colors.green),
                showNamaj('সালাতুস তাসবিহ', finalValue.tahajjud, Colors.white,
                    Colors.blue, Colors.green),
              ],
            ),
          ),
          reuseSizeBox(30)
        ],
      ));
}

Container newMethodoppp() {
  return Container(
      margin: const EdgeInsets.all(10),
      //height: ,
      decoration: BoxDecoration(
          color: Color(0xFFf4f4fd), borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          reuseSizeBox(30),
          reusetText('নামাজের নিষিদ্ধ যে সব সময়ে ', Colors.black, 19),
          reuseSizeBox(10),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                showNamaj('${finalValue.finalSunrise} -', finalValue.israk,
                    Colors.black, Colors.orange, Colors.yellow),
                showNamaj('${finalValue.finalSunmid} -', finalValue.dohorFinal,
                    Colors.black, Colors.orange, Colors.yellow),
                showNamaj('${finalValue.preSunset} -', finalValue.finalSunset,
                    Colors.black, Colors.orange, Colors.yellow),
              ],
            ),
          ),
          reuseSizeBox(30),
        ],
      ));
}

Container showNamaj(
    String _title, String _sub, Color color, Color one, Color two) {
  return Container(
    //height: 140,
    width: 140,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    margin: EdgeInsets.all(10),
    decoration: gradiebtdec(one, two),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        reusetText(_title, color, 17),
        reuseSizeBox(6),
        reusetText(_sub, color, 17),
      ],
    ),
  );
}

BoxDecoration gradiebtdec(Color color, Color color2) {
  return BoxDecoration(
      gradient: LinearGradient(colors: [
        color,
        color2,
      ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      boxShadow: [
        BoxShadow(
          color: color2.withOpacity(0.4),
          blurRadius: 8,
          spreadRadius: 2,
          offset: Offset(4, 4),
        ),
      ],
      borderRadius: BorderRadius.circular(10));
}

Container sunCon(String hour, String minte, String sec, String title) {
  return Container(
    //alignment: Alignment.center,
    decoration: gradiebtdec(Colors.lightBlue, Colors.white),
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        reuseSizeBox(20),
        reusetText(title, Colors.black, 15),
        Row(
          children: [
            sun(hour),
            reusetText(':', Colors.black, 15),
            sun(minte),
            reusetText(':', Colors.black, 15),
            sun(sec),
          ],
        ),
        reuseSizeBox(10),
      ],
    ),
    // height: 180,
    //s width: 240,
  );
}

Container sun(String sun) {
  return Container(
    width: 50,
    height: 50,
    alignment: Alignment.center,
    child: reusetText(sun, Colors.black, 25),
  );
}
