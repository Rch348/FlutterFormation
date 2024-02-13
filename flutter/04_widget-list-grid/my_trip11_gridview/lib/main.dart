import 'package:flutter/material.dart';
import 'package:my_trip11_gridview/views/city/city.dart';
// import 'package:my_trip11_gridview/views/home/home.dart';

/*
  Point de départ lors du lancement de l'application : démarre sur la page Home.
*/

void main() {
  runApp(const MyTrip());
}

class MyTrip extends StatelessWidget {
  const MyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(),
      home: City(),
      
    );
  }
}
