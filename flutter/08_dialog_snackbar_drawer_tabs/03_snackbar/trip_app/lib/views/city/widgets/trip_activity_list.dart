// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trip_app/models/activity_model.dart';

class TripActivityList extends StatelessWidget {
  final List<Activity> activities;
  final Function(String) deleteTripActivity;

  const TripActivityList(
      {super.key, required this.activities, required this.deleteTripActivity});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        //plus optimisé
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
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.purple,
              ),
              onPressed: () {
                deleteTripActivity(activities[index].id);
                // ScaffoldMessenger : Classe fournissant des APIs pour afficher des snack-bars et bannières en bas et en haut de l'écran respectivement.
                ScaffoldMessenger
                  .of(context)
                  .showSnackBar(
                    // Petite barre émergeant du bas de l'écran lors d'une action spécifique pouvant contenir un message ou autre.
                    SnackBar(
                      content: Text('Activité supprimée'),
                      backgroundColor: Colors.blue[200],
                      duration: Duration(seconds: 4),
                      action: SnackBarAction(
                        label: 'Annuler', 
                        textColor: Colors.black, onPressed: () {},
                      )
                    )
                  );
              },
            ),
          ),
        );
      },
      itemCount: activities.length,
    );
  }
}
