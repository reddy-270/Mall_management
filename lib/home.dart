import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mall_management/utils/routes.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.deepPurple[400],

  primary: Colors.deepPurple[50],
  // minimumSize: const Size(100, 36),
  padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(70.0)),
  ),
);
void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  //adding features 1. functions 2. variable to class.
  // that widget should have sth to render that.
  @override
  //if we tell flutter to use object based widget, then it tries to draw sth from build.
  Widget build(BuildContext context) {
    // Scaffold() adds background to page
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple[50],
          appBar: AppBar(
            backgroundColor: Colors.deepPurple[700],
            title: const Text('Mall Management'),
          ),
          body: ListView(
            children: [
              Container(
                height: 40,
                // padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(top: 20.0),
                child: const Text(
                  'Jaw dropping Offers',
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                  textAlign: TextAlign.center,
                ),
              ),
              CarouselSlider(
                  items: [
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("assets/Pizza.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/shirts.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: const DecorationImage(
                            image: AssetImage("assets/macs.png"),
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                  options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  )),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: const Text(
                  'Explore',
                  style: TextStyle(
                      // color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.local_parking_rounded,
                              color: Colors.deepPurple,
                              size: 45.0,
                            ),
                            Text("Parking",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.parkingRoute);
                        }),
                    ElevatedButton(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.payment_rounded,
                              color: Colors.deepPurple,
                              size: 45.0,
                            ),
                            Text("Payments",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.paymentRoute);
                        }),
                    ElevatedButton(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.movie_rounded,
                              color: Colors.deepPurple,
                              size: 45.0,
                            ),
                            Text("Movies",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.moviesRoute);
                        })
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 12, right: 12, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.local_offer_rounded,
                              color: Colors.deepPurple,
                              size: 45.0,
                            ),
                            Text("Offers",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.offersRoute);
                        }),
                    ElevatedButton(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.navigation_rounded,
                              color: Colors.deepPurple,
                              size: 45.0,
                            ),
                            Text("Location",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.locationRoute);
                        }),
                    ElevatedButton(
                        child: Column(
                          children: const [
                            Icon(
                              Icons.sports_cricket,
                              color: Colors.deepPurple,
                              size: 45.0,
                            ),
                            Text("Games", style: TextStyle(color: Colors.black))
                          ],
                        ),
                        style: raisedButtonStyle,
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.gamesRoute);
                        }),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
