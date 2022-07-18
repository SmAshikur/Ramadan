import 'package:flutter/material.dart';
import 'package:ramdam_app/reUse/reUseText.dart';

class Calender extends StatelessWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            height: 50,
            alignment: Alignment.center,
            color: Color(0xFF7BB661),
            child: reusetText('**   শুধুমাত্র ঢাকার জন্য প্রযোজ্য হবে ...**',
                Colors.black, 19),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            margin: EdgeInsets.fromLTRB(2, 0, 2, 0),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //////  begin: Alignment.bottomCenter,
                /////// end: Alignment.topCenter,
                //// colors: [
                ///   Color(0xFF148535),
                //  Colors.blue,
                ////  Colors.red,
                // ],
                //  ),
                ),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,

              children: [
                calCon('রহমতের ১০ দিন ', Color(0xFF49236D)),
                reuseSizeBox(5),
                newMethodTable(),
                reuseSizeBox(5),
                calCon('মাগফিরাতের ১০ দিন', Color(0xFFC40000)),
                reuseSizeBox(5),
                newMethodTableTwo(),
                reuseSizeBox(5),
                calCon('নাজাতের ১০ দিন ', Color(0xFF00563F)),
                reuseSizeBox(5),
                newMethodTableThree(),
                reuseSizeBox(5),
                calCon('রমাদানুল কারিম ২০২২ ', Color(0xFF013220)),
              ],
            ),
          ),
        ),
      ],
    );
    ;
  }

  Container calCon(String title, Color color) {
    return Container(
        height: 50, color: color, child: reusetText(title, Colors.white, 20));
  }

  Table newMethodTable() {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FractionColumnWidth(0.17),
        1: FractionColumnWidth(0.23),
      },
      children: [
        buildRow(['রোজা', 'তারিখ', 'বার', 'সেহরি ', 'ইফতার'], isHeader: true),
        buildRow([
          '১',
          '৩ এপ্রিল ',
          'রবি',
          ' ৪ঃ২৭ মিনিট ',
          '৬ঃ২৪ মিনিট',
        ]),
        buildRow([
          '২',
          '৪ এপ্রিল',
          'সোম',
          ' ৪ঃ২৬ মিনিট ',
          '৬ঃ২৫ মিনিট',
        ]),
        buildRow([
          '৩',
          '৫ এপ্রিল',
          'মঙ্গল',
          ' ৪ঃ২৪ মিনিট ',
          '৬ঃ২৫ মিনিট',
        ]),
        buildRow([
          '৪',
          '৬ এপ্রিল',
          'বুধ',
          ' ৪ঃ২৪ মিনিট ',
          '৬ঃ২৫ মিনিট',
        ]),
        buildRow([
          '৫',
          '৭ এপ্রিল',
          'বৃহস্পতি',
          ' ৪ঃ২৩ মিনিট ',
          '৬ঃ২৬ মিনিট',
        ]),
        buildRow([
          '৬',
          '৮ এপ্রিল',
          'শুক্র',
          ' ৪ঃ২২ মিনিট ',
          '৬ঃ২৬ মিনিট',
        ]),
        buildRow([
          '৭',
          '৯ এপ্রিল',
          'শনি',
          ' ৪ঃ২১ মিনিট ',
          '৬ঃ২৬ মিনিট',
        ]),
        buildRow([
          '৮',
          '১০ এপ্রিল',
          'রবি',
          ' ৪ঃ২০ মিনিট ',
          '৬ঃ২৭ মিনিট',
        ]),
        buildRow([
          '৯',
          '১১ এপ্রিল',
          'সোম',
          ' ৪ঃ১৯ মিনিট ',
          '৬ঃ২৭ মিনিট',
        ]),
        buildRow([
          '১০',
          '১২ এপ্রিল',
          'মঙ্গল',
          ' ৪ঃ১৮ মিনিট ',
          '৬ঃ২৮ মিনিট',
        ]),
      ],
    );
  }

  Table newMethodTableTwo() {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FractionColumnWidth(0.17),
        1: FractionColumnWidth(0.23),
      },
      children: [
        buildRow(['রোজা', 'তারিখ', 'বার', 'সেহরি ', 'ইফতার'], isHeader: true),
        buildRow([
          '১১',
          '১৩ এপ্রিল ',
          'বুধ',
          ' ৪ঃ১৭ মিনিট ',
          '৬ঃ২৮ মিনিট',
        ]),
        buildRow([
          '১২',
          '১৪ এপ্রিল',
          'মঙ্গল',
          ' ৪ঃ১৫ মিনিট ',
          '৬ঃ২৮  মিনিট',
        ]),
        buildRow([
          '১৩',
          '১৫ এপ্রিল',
          'বুধ',
          ' ৪ঃ১৪ মিনিট ',
          '৬ঃ২৯ মিনিট',
        ]),
        buildRow([
          '১৪',
          '১৬ এপ্রিল',
          'বৃহস্পতি ',
          ' ৪ঃ১৩ মিনিট ',
          '৬ঃ২৯ মিনিট',
        ]),
        buildRow([
          '১৫',
          '১৭ এপ্রিল',
          'শুক্র',
          ' ৪ঃ১২ মিনিট ',
          '৬ঃ২৯ মিনিট',
        ]),
        buildRow([
          '১৬',
          '১৮ এপ্রিল',
          'শনি',
          ' ৪ঃ১১ মিনিট ',
          '৬ঃ৩০ মিনিট',
        ]),
        buildRow([
          '১৭',
          '১৯ এপ্রিল',
          'রবি',
          ' ৪ঃ১০ মিনিট ',
          '৬ঃ৩০ মিনিট',
        ]),
        buildRow([
          '১৮',
          '২০ এপ্রিল',
          'সোম ',
          ' ৪ঃ০৯ মিনিট ',
          '৬ঃ৩১ মিনিট',
        ]),
        buildRow([
          '১৯',
          '২১ এপ্রিল',
          'মঙ্গল ',
          ' ৪ঃ০৮ মিনিট ',
          '৬ঃ৩১ মিনিট',
        ]),
        buildRow([
          '২০',
          '২০ এপ্রিল',
          'বুধ',
          ' ৪ঃ০৭ মিনিট ',
          '৬ঃ৩২ মিনিট',
        ]),
      ],
    );
  }

  Table newMethodTableThree() {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FractionColumnWidth(0.17),
        1: FractionColumnWidth(0.23),
      },
      children: [
        buildRow(['রোজা', 'তারিখ', 'বার', 'সেহরি ', 'ইফতার'], isHeader: true),
        buildRow([
          '২১',
          '২৩ এপ্রিল ',
          'বৃহস্পতি',
          ' ৪ঃ০৬ মিনিট ',
          '৬ঃ৩২ মিনিট',
        ]),
        buildRow([
          '২২',
          '২৪ এপ্রিল',
          'শুক্র',
          ' ৪ঃ০৫ মিনিট ',
          '৬ঃ১৮ মিনিট',
        ]),
        buildRow([
          '২৩',
          '২৫ এপ্রিল',
          'শনি',
          ' ৪ঃ০৫ মিনিট ',
          '৬ঃ২৮ মিনিট',
        ]),
        buildRow([
          '২৪',
          '২৬ এপ্রিল',
          'রবি',
          ' ৪ঃ০৪ মিনিট ',
          '৬ঃ৩৪ মিনিট',
        ]),
        buildRow([
          '২৫',
          '২৭ এপ্রিল',
          'সোম',
          ' ৪ঃ০৩ মিনিট ',
          '৬ঃ৩৪ মিনিট',
        ]),
        buildRow([
          '২৬',
          '২৮ এপ্রিল',
          'মঙ্গল',
          ' ৪ঃ০২ মিনিট ',
          '৬ঃ৩৪ মিনিট',
        ]),
        buildRow([
          '২৭',
          '২৯ এপ্রিল',
          'বুধ',
          ' ৪ঃ০১ মিনিট ',
          '৬ঃ৩৫ মিনিট',
        ]),
        buildRow([
          '২৮',
          '৩০ এপ্রিল',
          'বৃহস্পতি',
          ' ৪ঃ০০ মিনিট ',
          '৬ঃ৩৫ মিনিট',
        ]),
        buildRow([
          '২৯',
          '১ মে',
          'শুক্র',
          ' ৩ঃ৫৯ মিনিট ',
          '৬ঃ৩৬ মিনিট',
        ]),
        buildRow([
          '৩০',
          '২ মে',
          'শনি',
          ' ৩ঃ৫৮ মিনিট ',
          '৬ঃ৩৬ মিনিট',
        ]),
      ],
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
      children: cells
          .map((e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Container(
                        child: Text(
                  e,
                  style: TextStyle(
                      fontWeight: isHeader ? FontWeight.w900 : FontWeight.w700,
                      fontSize: 15),
                ))),
              ))
          .toList());
}
