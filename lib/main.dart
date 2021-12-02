// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:mall_management/qrcode.dart';
import 'package:mall_management/location.dart';
import 'package:mall_management/offers.dart';
import 'package:mall_management/movies.dart';
import 'package:flutter/material.dart';
import 'package:mall_management/home.dart';
import 'package:mall_management/parking.dart';
import 'package:mall_management/payment.dart';
import 'package:mall_management/utils/routes.dart';

import 'games.dart';
// import 'package:mall_management/parking.dart';ze

void main() => runApp(const MyApp());

//root widget is an object
//classes in dart (OOP lang), they are blueprint.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //adding features 1. functions 2. variable to class.
  // that widget should have sth to render that.
  @override
  //if we tell flutter to use object based widget, then it tries to draw sth from build.
  Widget build(BuildContext context) {
    // Scaffold() adds background to page
    return MaterialApp(
      home: const Home(),
      routes: {
        MyRoutes.gamesRoute: (context) => const Games(),
        MyRoutes.parkingRoute: (context) => const Parking(),
        MyRoutes.paymentRoute: (context) => const Payments(),
        MyRoutes.locationRoute: (context) => const Location(),
        MyRoutes.moviesRoute: (context) => const Movies(),
        MyRoutes.offersRoute: (context) => const Offers(),
        MyRoutes.qrcodeRoute: (context) => ScanScreen()
      },
    );
  }
}
