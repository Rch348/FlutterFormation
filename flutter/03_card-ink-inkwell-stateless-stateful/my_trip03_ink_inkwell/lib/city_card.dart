// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

/*
  Définition de la classe CityCard{name, image} et gestion de la mise en forme des cartes représentant les villes :
  - Card
  -- SizedBox (dimension)
  --- Stack (superposition)
  ---- Image
  ---- Container
  ----- Column
  ------ Expanded (étalement de la Row sur toute la place disponible)
  ------- Row (1ère ligne contenant l'icône favori)
  ------- Row (2ème ligne contenant le nom de la ville)
*/

import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String image;

  const CityCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 2,
        child: SizedBox(
          height: 150,
          child: Stack(fit: StackFit.expand, children: [
            Image.asset(
              image,
              fit: BoxFit.fitWidth,
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star_border, size: 40, color: Colors.white)
                    ],
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 25
                        )
                      )
                    ],
                  )
                ])),
          ]),
        ));
  }
}
