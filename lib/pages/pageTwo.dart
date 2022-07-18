import 'package:flutter/material.dart';
import 'package:ramdam_app/pages/PageThree.dart';
import 'package:ramdam_app/pages/locBind.dart';
//import 'package:ramdam_app/pages/splashScreen.dart';
import 'package:ramdam_app/reUse/reUseText.dart';
import 'package:geolocator/geolocator.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  get onTap => null;

  //String _location = '';

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () async {
          //if (_determinePosition == Future.error) {
          Position _pos = await _determinePosition();
          setState(() {
            UserLocation.lat = _pos.latitude;
            UserLocation.long = _pos.longitude;
          });
          // }

          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Pagethree()));
        },
        child: Scaffold(
          body: Stack(
            children: [
              Center(
                child: reuseOpacity(0.85),
              ),
              Center(
                child: reuseOpacityTwo(Color(0xFF2B2929), 0.6),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      reusetText('Ramadan', Colors.white, 50),
                      reuseSizeBox(20.0),
                      reusetText('is', Colors.white, 50),
                      reuseSizeBox(20.0),
                      reusetText('Calling', Colors.white, 50),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
