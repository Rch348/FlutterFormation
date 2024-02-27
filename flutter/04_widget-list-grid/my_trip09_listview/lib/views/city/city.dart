// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_trip09_listview/models/activity_model.dart';
import 'package:my_trip09_listview/datas/data.dart' as data;
import 'package:my_trip09_listview/views/city/widgets/activity_card.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities =  data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back
        ),
        title: Text(
          'Paris'
        ),
        actions: [
          Icon(
            Icons.more_vert
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        
        // Ce que l'on avait :
        // child: Column(
        //   children: [
        //     for(var activity in widget.activities)
        //       ActivityCard(activity: activity),
        //   ],
        // ),

        // Première façon pas très optimisée si beaucoup de données :
        // child: ListView(
          // children: 
            // Boucle dans le widget (car stateful) activities (liste définie + haut)
            // for(var activity in widget.activities)
            //   ActivityCard(activity: activity),

            // Méthode .map sur le widget liste activities prenant en argument activity pour renvoyer la classe ActivityCard
            // widget.activities.map((activity) {
            //   return ActivityCard(activity: activity);
            // // Méthode .toList pour convertir en liste.
            // }).toList(),

            // widget.activities.map((activity) => ActivityCard(activity: activity)).toList(),        
        // ),

        // Le plus opti et le plus utilisé :
        // child: ListView.builder(
        //   itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
        //   itemCount: widget.activities.length,
        // ),

        // Separated : pour séparer chaque carte avec separatorBuilder pour le personnaliser.
        child: ListView.separated(
          itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
          // separatorBuilder: (context, index) => Divider(),
          separatorBuilder: (context, index) => SizedBox(height: 50),
          // Récupère la longueur de la liste activities
          itemCount: widget.activities.length,
        ),

      ),
    );
  }
}
