// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

/*
  Rajout d'un booléen (favorite) et d'une fonction de rappel (updateFavorite) dans la classe CityCard pour mettre à jour l'état 
  (favori ou non) de la ville après clic sur la carte.
*/

import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  
  final String name;
  final String image;
  final bool favorite;
  final VoidCallback updateFavorite;

  CityCard(
      {super.key,
      required this.name,
      required this.image,
      required this.favorite,
      required this.updateFavorite
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 2,
        child: Container(
          height: 150,
          // Stack pour ajouter le container (L44).
          child: Stack(
            fit: StackFit.expand, 
            children: [
              // Premier widget Ink.image requis pour visualiser l'effet car si directement child: Inkwell, l'effet sera en dessous de l'image. 
              Ink.image(
                fit: BoxFit.fitWidth,
                image: AssetImage(image),
                child: InkWell(
                  onTap: updateFavorite,
                )
              ),  
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Icon(Icons.favorite, size: 40,color: Colors.white,),
                          Icon(
                            favorite ? Icons.star : Icons.star_border, 
                            size: 40, 
                            color: Colors.white
                          )
                        ],
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Icon(Icons.favorite, size: 40,color: Colors.white,),
                        Text(
                          name,
                          style: TextStyle(color: Colors.white, fontSize: 25))
                      ],
                    )
                ])),
          ]),
        ));
  }
}
