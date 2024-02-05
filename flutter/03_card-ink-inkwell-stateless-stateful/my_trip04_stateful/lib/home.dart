// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:my_trip04_stateful/city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // centerTitle: true,
          leading: Icon(Icons.home),
          title: InkWell(
            // Couleur du surlignement de l'élément appuyé
            highlightColor: Colors.white,
            splashColor: Colors.grey,
            radius: 40,
            // Fonction qui s'auto-invoque lors de l'appui
            onTap: () {
              print('Touché!');
            },
            child: Text('MyTrip'),
          ),
          actions: [Icon(Icons.more_vert)]),
      body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[100],
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CityCard(
                name: 'Montpellier', image: 'assets/images/Montpellier.jpeg'),
            CityCard(name: 'Peyrou', image: 'assets/images/Peyrou.jpeg'),
          ])),
    );
  }
}
