/*
  Affichage des activités sélectionnées sous forme de liste de tuiles avex icône poubelle.
*/

import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';

class TripActivityList extends StatelessWidget {
  final List<Activity> activities;

  const TripActivityList({super.key, required this.activities});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        // Plus optimisé :
        // var activity = activities[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              // backgroundImage: AssetImage(activity.image),
              backgroundImage: AssetImage(activities[index].image),
            ),
            // title: Text(activity.name),
            title: Text(activities[index].name),
            subtitle: Text(activities[index].city),
            trailing: IconButton(icon: Icon(Icons.delete, color: Colors.purple,), onPressed: () {},),
          ),
        );
      },
      itemCount: activities.length,
    );
  }
}
