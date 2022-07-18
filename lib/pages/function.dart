import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ramdam_app/main.dart';

//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:ramdam_app/pages/data.dart';
import 'package:ramdam_app/pages/locBind.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import 'package:ramdam_app/theme.dart';

class allFunc {
  static hello() {
    DateTime now = new DateTime.now();
    DateTime nextday = now.add(Duration(days: 1));
    // print(nextday);
    var CurrentDateUTC = DateFormat('yyyy-MM-dd').format(now);
    finalValue.currentTime = DateFormat('hh:mm a').format(now);
//ifterr
    DateTime ifter = (DateTime.parse('${CurrentDateUTC}T${UserLocation.iftar}'))
        .add(const Duration(seconds: 513));

    //  print(ifter);
    finalValue.ifterFinal = DateFormat('hh:mm a').format(ifter);
    Duration ifterDur = ifter.difference(now);
    finalValue.iftrDur = ifterDur.inSeconds.toInt();
    finalValue.iftHours = (finalValue.iftrDur / 60) ~/ 60;
    finalValue.iftMinite =
        (finalValue.iftrDur ~/ 60) - finalValue.iftHours * 60;
    finalValue.iftrSecond =
        finalValue.iftrDur - (finalValue.iftrDur ~/ 60) * 60;
//sehrir
    DateTime sehri = DateTime.parse('${CurrentDateUTC}T${UserLocation.sehri}');
    finalValue.sehriFinal = DateFormat('hh:mm a').format(sehri);
    //  print(sehri);
    Duration sehriDur = sehri.difference(now);
    finalValue.shehriDur = (sehriDur.inSeconds).toInt();
    finalValue.shriHours = ((sehriDur.inSeconds.toInt()) / 60) ~/ 60;
    finalValue.shriMinite =
        ((sehriDur.inSeconds.toInt()) ~/ 60) - finalValue.shriHours * 60;
    finalValue.shrirSecond = (sehriDur.inSeconds.toInt()) -
        ((sehriDur.inSeconds.toInt()) ~/ 60) * 60;
    //

//salat
    DateTime fajar = DateTime.parse('${CurrentDateUTC}T${UserLocation.fajar}');
    finalValue.fajarFinal = DateFormat('hh:mm a').format(fajar);
    DateTime dohor = DateTime.parse('${CurrentDateUTC}T${UserLocation.dhohor}');
    finalValue.dohorFinal = DateFormat('hh:mm a').format(dohor);
    DateTime asr = DateTime.parse('${CurrentDateUTC}T${UserLocation.asr}')
        .add(const Duration(minutes: 59));
    finalValue.asarFinal = DateFormat('hh:mm a').format(asr);
    DateTime magrib =
        DateTime.parse('${CurrentDateUTC}T${UserLocation.magrib}');
    finalValue.magribFinal = DateFormat('hh:mm a').format(magrib);
    DateTime esa = DateTime.parse('${CurrentDateUTC}T${UserLocation.esa}');
    finalValue.eshaFinal = DateFormat('hh:mm a').format(esa);

//nafal salat
    DateTime israk = DateTime.parse('${CurrentDateUTC}T${UserLocation.sunrise}')
        .add(const Duration(minutes: 25));
    finalValue.israk = DateFormat('hh:mm a').format(israk);
    DateTime cast = DateTime.parse('${CurrentDateUTC}T${UserLocation.sunrise}')
        .add(const Duration(minutes: 30));
    finalValue.chast = DateFormat('hh:mm a').format(cast);
    DateTime awabin = DateTime.parse('${CurrentDateUTC}T${UserLocation.magrib}')
        .add(const Duration(minutes: 15));
    finalValue.awabin = DateFormat('hh:mm a').format(awabin);
    DateTime tahajjud =
        DateTime.parse('${CurrentDateUTC}T${UserLocation.midNight}');
    finalValue.tahajjud = DateFormat('hh:mm a').format(tahajjud);

//
    DateTime rise = DateTime.parse('${CurrentDateUTC}T${UserLocation.sunrise}');
    finalValue.finalSunrise = DateFormat('hh:mm a').format(rise);
    DateTime sunmid = DateTime.parse('${CurrentDateUTC}T${UserLocation.dhohor}')
        .subtract(const Duration(minutes: 10));
    finalValue.finalSunmid = DateFormat('hh:mm a').format(sunmid);
    DateTime set = DateTime.parse('${CurrentDateUTC}T${UserLocation.iftar}');
    finalValue.finalSunset = DateFormat('hh:mm a').format(set);
    DateTime preset = DateTime.parse('${CurrentDateUTC}T${UserLocation.iftar}')
        .subtract(const Duration(minutes: 15));
    finalValue.preSunset = DateFormat('hh:mm a').format(preset);
    String greeting = "";
    // ifter  sehri
    int hours = now.hour;
    int mint = now.minute;
    if (finalValue.iftrDur >= 0 && finalValue.shehriDur <= 0) {
      finalValue.msg = "ইফতারের সময় বাকি আছে ";
      finalValue.msgTwo =
          "** সূর্যাস্তের ঠিক ৮ মিনিট ৩৩ সেকেন্ড পর ইফতারের সময় হিসাবে ধরা হয়েছে ***  ";
      finalValue.showHour = finalValue.iftHours;
      finalValue.showMinit = finalValue.iftMinite;
      finalValue.showSecomd = finalValue.iftrSecond;
    } else if (finalValue.iftrDur <= 1 && finalValue.shehriDur <= 0) {
      finalValue.msg = "পরবর্তী সেহরির সময় বাকি ";
      finalValue.msgTwo =
          "**আল্লাহ তাআলা বলেন, রোজা আমারই জন্য, আমি নিজেই তার প্রতিদান দেব।’ (বুখারি ও মুসলিম)। **";
      finalValue.showHour = finalValue.shriHours + 24;
      finalValue.showMinit = finalValue.shriMinite + 60;
      finalValue.showSecomd = finalValue.shrirSecond + 60;
    } else if (finalValue.shehriDur >= 1) {
      finalValue.msg = "সেহরির সময় বাকি আছে";
      finalValue.msgTwo =
          "** সূর্যদয়ের দেড় ঘণ্টা পূর্বেই সেহরি শেষ করা উত্তম। আর এই সময়টা ইবাদতের জন্য সর্বোত্তম !**";
      finalValue.showHour = finalValue.shriHours;
      finalValue.showMinit = finalValue.shriMinite;
      finalValue.showSecomd = finalValue.shrirSecond;
    }

    // print();
    int fajarDur = (fajar.difference(now).inMinutes).toInt();
    int sunriseDur = (rise.difference(now).inMinutes).toInt();
    int sunriseDurAgain = (rise.difference(now).inSeconds).toInt();
    finalValue.riseHour = (sunriseDurAgain ~/ 60) ~/ 60;
    finalValue.riseMintue = (sunriseDurAgain ~/ 60) - finalValue.riseHour * 60;
    finalValue.riseSec = sunriseDurAgain - ((sunriseDurAgain ~/ 60) * 60);
    int israkDur = (israk.difference(now).inMinutes).toInt();
    int chastDur = (cast.difference(now).inMinutes).toInt();
    int sunmidDur = (sunmid.difference(now).inMinutes).toInt();
    int dhorDur = (dohor.difference(now).inMinutes).toInt();
    int asarDur = (asr.difference(now).inMinutes).toInt();
    int setdur = (set.difference(now).inMinutes).toInt();
    int setdurAgain = (set.difference(now).inSeconds).toInt();
    finalValue.setHour = (setdurAgain ~/ 60) ~/ 60;
    finalValue.setMintue = (setdurAgain ~/ 60) - finalValue.setHour * 60;
    finalValue.setSec = setdurAgain - ((setdurAgain ~/ 60) * 60);
    int magribDur = (magrib.difference(now).inMinutes).toInt();
    int esaDur = (esa.difference(now).inMinutes).toInt();
    int tahajjdud = (tahajjud.difference(now).inMinutes).toInt();

    if (fajarDur <= 1 && sunriseDur >= 0) {
      finalValue.Textcolor = Colors.green;
      finalValue.namaj = 'ফজরের ওয়াক্ত ';
      finalValue.nofol = '${finalValue.finalSunrise}-এ ';
      finalValue.nofolTwo = 'সূর্যদয় হবে  ';
      scheduleAlarm(0, fajar, 'ফজর',
          'আলহামদুলিল্লাহ! ফজরের ওয়াক্ত শুরু হয়েছে । ঘুম থেকে নামাজ উত্তম');
    } else if (sunriseDur <= 1 && israkDur >= 0) {
      finalValue.namaj = 'নামাজ নিষিদ্ধ ';
      finalValue.nofol = '${finalValue.israk}-এর পর ';
      finalValue.nofolTwo = 'নামাজ পরতে পারবেন  ';
      scheduleAlarm(1, rise, 'সূর্যদয় হয়েছে', 'আপনার দিন সুন্দর কাটুক');
    } else if (israkDur <= 1 && sunmidDur >= 0) {
      finalValue.namaj = '${finalValue.dohorFinal}-এ যোহর শুরু ';
      finalValue.Textcolor = Colors.red;
      if (israkDur <= 1 && israkDur + 100 >= 0) {
        finalValue.nofol = 'ইশরাকের নামাজ ';
        finalValue.nofolTwo = 'চাশতের নামাজ  ';
      } else if (israkDur + 100 <= 1 && israkDur + 200 >= 0) {
        finalValue.nofol = 'চাশতের নামাজ ';
        finalValue.nofolTwo = 'ইস্তেগফার  ';
      } else {
        finalValue.nofol = ' ';
        finalValue.nofolTwo = 'ইস্তেগফার  ';
      }
    } else if (sunmidDur <= 1 && dhorDur >= 0) {
      finalValue.Textcolor = Colors.red;
      finalValue.namaj = 'নামাজ নিষিদ্ধ';
      finalValue.nofol = '${finalValue.dohorFinal} এর পর';
      finalValue.nofolTwo = 'যোহরের নামাজ';
      finalValue.Textcolor = Colors.red;
    } else if (dhorDur <= 1 && asarDur >= 0) {
      finalValue.namaj = 'যোহরের ওয়াক্ত';
      finalValue.Textcolor = Colors.green;
      finalValue.nofol = '${finalValue.asarFinal} এর পর';
      finalValue.nofolTwo = 'আসরের ওয়াক্ত';
      scheduleAlarm(
          2, dohor, 'যোহর', 'আলহামদুলিল্লাহ যোহরের ওয়াক্ত শুরু হয়েছে');
    } else if (asarDur <= 1 && setdur >= 0) {
      finalValue.nofol = '${finalValue.ifterFinal} এর পর ';
      finalValue.nofolTwo = 'ইফতার এবং মাগরিব';
      finalValue.namaj = 'আসরের ওয়াক্ত';
      scheduleAlarm(3, asr, 'আসর ', 'আলহামদুলিল্লাহ আসরের ওয়াক্ত শুরু হয়েছে');
      finalValue.Textcolor = Colors.green;
    } else if (setdur <= 1 && magribDur >= 0) {
      finalValue.namaj = 'নামাজ নিষিদ্ধ';
      finalValue.nofol = '${finalValue.ifterFinal} এর পর ';
      finalValue.nofolTwo = 'ইফতার এবং মাগরিব ';
    } else if (magribDur <= 1 && esaDur >= 0) {
      finalValue.nofol = '${finalValue.eshaFinal} এর পর ';
      finalValue.nofolTwo = 'ঈশা  এবং তারাবি  ';
      finalValue.namaj = 'মাগরিবের ওয়াক্ত';
      finalValue.Textcolor = Colors.green;
      scheduleAlarm(
          4, magrib, 'মাগরিব ', 'আলহামদুলিল্লাহ মাগরিবের ওয়াক্ত শুরু হয়েছে');
      if (finalValue.iftrDur <= 1 && finalValue.iftrDur + 1000 <= 1) {
        scheduleAlarm(4, magrib, 'ইফতার ', 'আলহামদুলিল্লাহ ইফতারের সময় হয়েছে');
      }
      if (magribDur + 15 <= 1) {
        finalValue.nofolTwo = '${finalValue.ifterFinal}-এ ইশা  ';
        finalValue.nofol = 'আওয়াবিন  ';
      }
    } else if (esaDur <= 1800 && fajarDur >= 0 || esaDur <= 1) {
      finalValue.Textcolor = Colors.green;
      finalValue.namaj = 'ইশার ওয়াক্ত  ';
      scheduleAlarm(5, esa, 'এশা ', 'আলহামদুলিল্লাহ এশার ওয়াক্ত শুরু হয়েছে');
      if (esaDur <= 1800 &&
          tahajjdud >= 0 &&
          UserLocation.hijriMonth == 'Ramaḍān') {
        finalValue.nofol = ' তারাবির ওয়াক্ত';
      } else if (tahajjdud <= 1 && fajarDur >= 0) {
        finalValue.nofol = ' তাহাজ্জুদের ওয়াক্ত ';
        finalValue.nofolTwo = ' সালাতুস তাসবিহ ';
        scheduleAlarm(6, tahajjud, 'তাহাজ্জুদ ',
            'আলহামদুলিল্লাহ ! শেষ রাত্রির ইবাদাত মহান রব্বুল আলামিনের অনেক প্রিয়');
      }
    } else {
      finalValue.namaj = ' ';
      finalValue.nofol = ' ';
      finalValue.Textcolor = Colors.green;
    }
    if (UserLocation.hijriDay == '01') {
      finalValue.bnDay = 'রবিবার';
    }
    if (UserLocation.hijriDay == '02') {
      finalValue.bnDay = 'সোমবার';
    }
    if (UserLocation.hijriDay == '03') {
      finalValue.bnDay = 'মঙ্গলবার';
    }
    if (UserLocation.hijriDay == '04') {
      finalValue.bnDay = 'বুধবার';
    }
    if (UserLocation.hijriDay == '05') {
      finalValue.bnDay = 'বৃহস্পতি বার';

      ///CustomColors.menuBackgroundColor = Colors.red;
    }
    if (UserLocation.hijriDay == '06') {
      finalValue.bnDay = 'জুম্মাবার';
      CustomColors.menuBackgroundColor = Colors.red;
    }
    if (UserLocation.hijriDay == '07') {
      finalValue.bnDay = 'শনি বার';
    }
    print(tahajjdud);
    print(esaDur);
  }

  static void scheduleAlarm(
    int id,
    DateTime scheduledNotificationDateTime,
    String title,
    String body,
  ) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'alarm_notif',
      'alarm_notif',
      'Channel for Alarm notification',
      playSound: true,
      // sound: RawResourceAndroidNotificationSound('yourmp3files.mp3'),
      importance: Importance.max,
      priority: Priority.high,
      icon: 'ic_stat',
      // sound: RawResourceAndroidNotificationSound('ok_lol'),
      largeIcon: DrawableResourceAndroidBitmap('ic_stat'),
      ticker: 'ticker',
    );

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    await flutterLocalNotificationsPlugin.schedule(id, title, body,
        scheduledNotificationDateTime, platformChannelSpecifics);
  }
}
