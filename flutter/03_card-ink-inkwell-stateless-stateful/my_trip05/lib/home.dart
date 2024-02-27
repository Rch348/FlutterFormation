// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
  Rendre dynamique la carte d'une ville pour la mettre en favori : Stateful sur la classe Home (_HomeState).
  Automatisation des villes affichées dans les cartes :
  -> Création d'une liste 'cities' contenant :
    . Le nom de la ville
    . Le chemin de l'images
    . Booléen indiquant si favori ou non
  Création d'une fonction switchFavorite pour mettre une ville en favori ou non :
  - 
*/

import 'package:flutter/material.dart';
import 'package:my_trip05/city_card.dart';

// Ici sera ajouté tout ce qui restera statique (ce qui ne changera pas).
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// Ici sera ajouté tout ce qui sera dynamique (ce qui va changer).
class _HomeState extends State<Home> {

  List cities = [
    {'name': 'Montpellier','image': 'assets/images/Montpellier.jpeg','favorite': false},
    {'name': 'Peyrou', 'image': 'assets/images/Peyrou.jpeg', 'favorite': false},
    {'name': 'Travers', 'image': 'assets/images/Travers.png', 'favorite': false},
    {'name': 'Pic Saint-Loup', 'image': 'assets/images/Pic.jpeg', 'favorite': false}
  ];

  /*
    Fonction permettant à la ville identifiée par son index dans la liste cities de passer de 
    l'état non-favori à l'état favori grâce à la fonction imbriquée setState.
  */
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
            actions: [Icon(Icons.more_vert)]
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey[100],
            child: SingleChildScrollView(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
                
                /* 
                  Boucle pour créer une nouvelle carte pour chaque city dans la liste cities récupérant ainsi 
                  le nom, l'image, l'état (fav ou non) et la fonction updateFavorite (fonction de rappel 
                   invoquant switchFavorite() définie dans la classe CityCard) de chaque ville.
                */
                for(var city in cities)
                  CityCard(name: city['name'], image: city['image'], favorite: city['favorite'], updateFavorite: (){
                    switchFavorite(city);
                  }),
        
          ]))),
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