import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ramdam_app/clock/clock.dart';
import 'package:ramdam_app/pages/locBind.dart';
import 'package:ramdam_app/reUse/reUseText.dart';

class Three extends StatefulWidget {
  const Three({Key? key}) : super(key: key);

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
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
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 50,
              color: Colors.black,
              child: reusetText('সেহরির নিয়াত', Colors.white, 20),
            ),
            reuseSizeBox(10),
            reusetText('আরবি', Colors.black, 20),
            reuseSizeBox(10),
            reusetText(
                'نَوَيْتُ اَنْ اُصُوْمَ غَدًا مِّنْ شَهْرِ رَمْضَانَ الْمُبَارَكِ فَرْضَا لَكَ يَا اللهُ فَتَقَبَّل مِنِّى اِنَّكَ اَنْتَ السَّمِيْعُ الْعَلِيْم',
                Colors.black,
                15),
            reuseSizeBox(10),
            reuseSizeBox(10),
            reusetText('উচ্চারণ', Colors.black, 20),
            reuseSizeBox(10),
            reusetText(
                'নাওয়াইতু আন আছুম্মা গাদাম মিন শাহরি রমাজানাল মুবারাকি ফারদাল্লাকা, ইয়া আল্লাহু ফাতাকাব্বাল মিন্নি ইন্নিকা আনতাস সামিউল আলিম।',
                Colors.black,
                15),
            reuseSizeBox(10),
            reuseSizeBox(10),
            reusetText('অর্থ', Colors.black, 20),
            reuseSizeBox(10),
            reusetText(
                ' হে আল্লাহ! আমি আগামীকাল পবিত্র রমজানের তোমার পক্ষ থেকে নির্ধারিত ফরজ রোজা রাখার নিয়্যত করলাম। অতএব তুমি আমার পক্ষ থেকে আমার রোযা কবুল কর, নিশ্চয়ই তুমি সর্বশ্রোতা ও সর্বজ্ঞানী।',
                Colors.black,
                15),
            reuseSizeBox(40),
            //
            Container(
              height: 50,
              color: Colors.black,
              child: reusetText('ইফতারের দোয়া', Colors.white, 20),
            ),
            reuseSizeBox(10),
            reusetText('আরবি', Colors.black, 20),
            reuseSizeBox(10),
            reusetText(
                '  بِسْمِ اللهِ - اَللَّهُمَّ لَكَ صُمْتُ وَ عَلَى رِزْقِكَ اَفْطَرْتُ  ',
                Colors.black,
                15),
            reuseSizeBox(10),
            reuseSizeBox(10),
            reusetText('উচ্চারণ', Colors.black, 20),
            reuseSizeBox(10),
            Text(
              'বিসমিল্লাহি -আল্লাহুম্মা লাকা ছুমতু ওয়া আলা রিযক্বিকা ওয়া আফতারতু বিরাহমাতিকা ইয়া আরহামার রাহিমীন।',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            reuseSizeBox(10),
            reuseSizeBox(10),
            reusetText('অর্থ', Colors.black, 20),
            reuseSizeBox(10),
            Text(
              'আল্লাহর নামে (শুরু করছি);  হে আল্লাহ! আমি তোমারই সন্তুষ্টির জন্য রোজা রেখেছি এবং তোমারই দেয়া রিযিক্ব দ্বারা ইফতার করছি',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            reuseSizeBox(40),
            Container(
              height: 50,
              color: Colors.black,
              child: reusetText('হাক্কানি দুরুদ শরীফ', Colors.white, 20),
            ),
            reuseSizeBox(30),
            Text(
                'আল্লাহুম্মা সল্লি ওয়াছাল্লিম ওয়া বারিক আলা আবদিকার রসুলিল কারীম । রহমাতাল্লীল আলামিন শাফিয়ীল মুজনিবীন সাইয়িদিনা মাওলানা নাবিয়ীনা মুহাম্মাদ।  ওয়া আলা আলিহী ওয়া আহলে বায়তিহী ওয়া আওলা-দিহী ওয়া জুররিয়া-তিহী ওয়া আজওয়াজিহী ওয়া আসহা-বিহি ওয়া আউলিয়া-য়িহী ওয়া উম্মাতিহী আজমায়িন, কামা সল্লাইতা ওয়া ছাল্লামতা ওয়া বা-রকতা ওয়া রাহিমতা আলা সাইয়িদিনা ইব্রাহিমা ওয়া আলা আলে সাইয়িদিনা ইব্রাহিমা-ইন্নাকা হামীদুম মাজিদ।',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center),
            reuseSizeBox(40),
          ],
        ),
      ),
    );
  }
}
