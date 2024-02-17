// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

/*
  Structure de la page d'accueil => Scaffold (échafaud) contenant :
  - appBar : barre de navigation supérieure avec InkWell sur le titre => effet d'expansion lors du click
  - body : corps de la page contenant une colonne (dans un container) avec les cartes de villes
*/

import 'package:flutter/material.dart';
import 'package:my_trip04_stateful/city_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // centerTitle: true,
          leading: Icon(
            Icons.home
          ),
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
          actions: [
            Icon(Icons.more_vert)
          ]
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              CityCard(
                name: 'Montpellier', 
                image: 'assets/images/Montpellier.jpeg'
              ),
              CityCard(
                name: 'Peyrou', 
                image: 'assets/images/Peyrou.jpeg'
              ),
            ]
          )
      ),
    );
  }
}
