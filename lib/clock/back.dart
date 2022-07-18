import 'package:flutter/material.dart';
import 'package:ramdam_app/pages/pageTwo.dart';
import 'package:ramdam_app/reUse/reUseText.dart';

class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context,
              MaterialPageRoute(builder: (context) => const PageTwo()));
          print('object');
        },
        child: reusetText('Back', Colors.white, 20),
      ),
    );
  }
}
