import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mall_management/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: ListView(
        children: [
          Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/M_and_M.png"),
                  fit: BoxFit.cover,
                ),
              )),
          Container(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 160, 30, 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextField(
                      decoration: InputDecoration(hintText: "Enter Email : "),
                    ),
                    const TextField(
                      decoration:
                          InputDecoration(hintText: "Enter Password : "),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(15),
                            ),
                            child: const Text("Login"),
                            onPressed: () {
                              Navigator.pushNamed(context, MyRoutes.homeRoute);
                            }))
                  ],
                )),
          )
        ],
      ),
    );
  }
}
