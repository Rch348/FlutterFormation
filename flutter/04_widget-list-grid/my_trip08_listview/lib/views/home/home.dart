// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_trip08_listview/views/home/widgets/city_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List cities = [
    {'name': 'Montpellier','image': 'assets/images/Montpellier.jpeg','favorite': false},
    {'name': 'Peyrou', 'image': 'assets/images/Peyrou.jpeg', 'favorite': false},
    {'name': 'Travers', 'image': 'assets/images/Travers.png', 'favorite': false},
    {'name': 'Pic Saint-Loup', 'image': 'assets/images/Pic.jpeg', 'favorite': false}
  ];

  void switchFavorite(city){
    int index = cities.indexOf(city);
    setState(() {
      cities[index]['favorite'] = !cities[index]['favorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        leading: Icon(Icons.home),
        title: Text('MyTrip'),
        actions: [
          Icon(Icons.more_vert)
        ]
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              for(var city in cities)
                CityCard(
                    name: city['name'], 
                    image: city['image'], 
                    favorite: city['favorite'], 
                    updateFavorite: () {
                      switchFavorite(city);
                    }),

                // CityCard(name: 'Montpellier', image: 'assets/images/Montpellier.jpeg'),
                // CityCard(name: 'Peyrou', image: 'assets/images/Peyrou.jpeg'),
            ]
          )
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_land),
              label: 'Land'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.motorcycle),
              label: 'MoveTo'
            )
          ]
        ),
    );
  }
} 