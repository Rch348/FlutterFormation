/*
  Ajout des routes nommées : Définition des noms des routes ici (main.dart):
  - Pour se rendre sur HomeView : '/'
  - Pour se rendre sur HomeView : '/city'
*/

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/home_view.dart';

void main() {
  runApp(const MyTrip());
}

class MyTrip extends StatelessWidget {
  const MyTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeView(),
      // home: City(),

      // Route nommée définissant le point de départ de l'application.
      initialRoute: '/',
      
      // Définition des noms des routes :
      routes: {
        // 1ère route : HomeView().
        '/' : (context) {
          return HomeView();
        },

        // 2ème route : CityView().
        '/city' : (context) {
          return CityView();
        },
        // '/city' : (context) => CityView(),
        
      },
    );
  }
}
