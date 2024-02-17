// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

/*
  Structure de la page d'accueil => Scaffold (échafaud) contenant :
  - appBar : barre de navigation supérieure
  - body : corps de la page contenant une colonne (dans un container) avec les 
*/

import 'package:flutter/material.dart';
import 'package:my_trip02_refactoring/city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // centerTitle: true,
          leading: Icon(Icons.home),
          title: Text('MyTrip'),
          actions: [Icon(Icons.more_vert)]),
      body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[100],
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CityCard(name: 'Montpellier', image: 'assets/images/Montpellier.jpeg'),
                CityCard(name: 'Peyrou', image: 'assets/images/Peyrou.jpeg'),
              ]
          )
      )
    );
    
  }
}
