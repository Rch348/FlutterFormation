// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_trip06_refacto/views/home/widgets/city_card.dart';

class Home extends StatefulWidget 
{
   const Home({super.key});

   @override
   State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> 
{
   List cities = 
   [
      {
         'name': 'Montpellier',
         'image': 'assets/images/Montpellier.jpeg',
         'favorite': false
      },
      {
         'name': 'Peyrou', 
         'image': 'assets/images/Peyrou.jpeg', 
         'favorite': false
      },
      {
         'name': 'Travers', 
         'image': 'assets/images/Travers.png', 
         'favorite': false
      }
   ];

   void switchFavorite(city) 
   {
      int index = cities.indexOf(city);
      setState
      (
         () 
         {
            cities[index]['favorite'] = !cities[index]['favorite'];
         }
      );
   }

   @override
   Widget build(BuildContext context) 
   {
      List<Widget> allWidgets = [];

      for (var city in cities) 
      {
         allWidgets.add
         (
            CityCard
            (
               name: city['name'],
               image: city['image'],
               favorite: city['favorite'],
               updateFavorite: () 
               {
                  switchFavorite(city);
               }
            )
         );
      }

      return Scaffold
      (
         appBar: AppBar
         (
            leading: Icon
            (
               Icons.home
            ),
            title: Text
            (
               'MyTrip'
            ),
            actions: 
            [
               Icon
               (
                  Icons.more_vert
               )
            ]
         ),
         body: Container
         (
            padding: EdgeInsets.all(10),
            color: Colors.grey[100],
            child: SingleChildScrollView
            (
               child: Column
               (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: allWidgets   
               )
            )
         ),
         bottomNavigationBar: BottomNavigationBar
         (
            items: 
            [
               BottomNavigationBarItem
               (
                  icon: Icon
                  (
                     Icons.home
                  ), 
                  label: 'Home'
               ),
               BottomNavigationBarItem
               (
                  icon: Icon
                  (
                     Icons.flight_land
                  ), 
                  label: 'Land'
               ),
               BottomNavigationBarItem
               (
                  icon: Icon
                  (
                     Icons.motorcycle
                  ), 
                  label: 'MoveTo'
               )
            ]
         ),
      );
   }
}
