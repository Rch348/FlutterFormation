/*
  Mise en forme de la vue des différentes activités d'une ville sous forme de grille
  (affichée en dessous de TripOverview).
*/

import 'package:flutter/material.dart';
import 'package:my_trip16_bottom_nav_bar/models/activity_model.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/activity_card.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;

  const ActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: activities
          .map((activity) => ActivityCard(
                activity: activity,
              ))
          .toList(),
    );
  }
}
