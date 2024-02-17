// ignore_for_file: prefer_const_constructors

/*
  Affichage de l'activité d'une ville sur une carte
*/

import 'package:flutter/material.dart';
import 'package:my_trip08_activity_card/models/activity_model.dart';

class ActivityCard extends StatelessWidget {

  final Activity activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(activity.name),
          Image.asset(
            activity.image, 
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}