import 'package:flutter/material.dart';
import 'package:ramdam_app/pages/pageTwo.dart';

class Pageone extends StatelessWidget {
  const Pageone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageTwo(),
    );
  }
}
