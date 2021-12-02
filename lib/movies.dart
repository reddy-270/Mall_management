import 'package:flutter/material.dart';

void main() => runApp(const Movies());

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);
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
          title: const Text("Movies"),
        ),
        body: GridView.count(
          childAspectRatio: 16 / 20,
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          mainAxisSpacing: 7.0,
          crossAxisSpacing: 7.0,
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: [
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/m3.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/m4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/Freeguy.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/m2.webp"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/m5.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage("assets/m6.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
