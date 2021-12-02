import 'package:flutter/material.dart';

void main() => runApp(const Payments());

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);
  //adding features 1. functions 2. variable to class.
  // that widget should have sth to render that.
  @override
  //if we tell flutter to use object based widget, then it tries to draw sth from build.
  Widget build(BuildContext context) {
    // Scaffold() adds background to page
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text("Payments"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Unleash the power of Payments!'),
        ),
      ),
    );
  }
}
