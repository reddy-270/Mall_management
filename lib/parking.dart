import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mall_management/home.dart';
import 'package:mall_management/utils/routes.dart';

import 'createqr.dart';

void main() => runApp(const Parking());

class Parking extends StatelessWidget {
  const Parking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text("Parking"),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: ListView(children: [
        Container(
          height: 250.0,
          margin: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage("assets/parking_insurance.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
            child: const Text("Park my Vehicle"),
            // style: raisedButtonStyle,

            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
                primary: Colors.deepPurple),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.qrcodeRoute);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15.0),
                primary: Colors.deepPurple),
            onPressed: () {
              print("tapped on create QR button.");
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => CreateScreen(),
                ),
              );
            },
            child: const Text("Create QR"),
          ),
        )
      ]),
    );
  }
}
