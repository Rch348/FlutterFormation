/*
  Widget concernant 1 seule activité représentée sur une carte.
  Ici, ajout d'une propriété 'isSelected' (L12) et d'un call back appelant toggleActivity (initialisée dans city.dart) et
  l'invoquant dans activity_list.dart lors d'un tap sur l'image de l'activité en question.
*/

import 'package:flutter/material.dart';
import 'package:my_trip18_selection_activites/models/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  final bool isSelected;
  final VoidCallback toggleActivity;

  const ActivityCard(
    {
      super.key,
      required this.activity,
      required this.isSelected,
      required this.toggleActivity
    }
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink.image(
            image: AssetImage(
              activity.image
            ),
            fit: BoxFit.cover,
            child: InkWell(
              onTap: toggleActivity,
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (isSelected)
                        const Icon(
                          Icons.check,
                          size: 40,
                          color: Colors.white,
                        )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      activity.name, 
                      style: const TextStyle(
                        fontSize: 20, 
                        color: Colors.white
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
