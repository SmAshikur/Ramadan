import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:ramdam_app/pages/locBind.dart';
//import 'package:locationflutter/location_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String country = '';
  String name = '';
  String street = '';
  String postalCode = '';

  @override
  void initState() {
    super.initState();

    getLocation();
  }

  Future<void> getLocation() async {
    List<Placemark> placemark =
        await placemarkFromCoordinates(UserLocation.lat, UserLocation.long);

    print(placemark[0].country);
    print(placemark[0].name);
    print(placemark[0].street);
    print(placemark[0].postalCode);

    setState(() {
      country = placemark[0].country!;
      name = placemark[0].name!;
      street = placemark[0].street!;
      postalCode = placemark[0].postalCode!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text("Lat : " + "${UserLocation.lat}"),
          // Text("Long : " + "${UserLocation.long}"),
          Text(country),
          //Text("Name : " + "$name"),
          // Text("Street : " + "$street"),
          // Text("PostalCode : " + "$postalCode"),
        ],
      ),
    );
  }
}
