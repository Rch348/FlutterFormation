// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
  Imports d'activity_model.dart et activity_card.dart afin d'afficher les différentes activités de la ville sélectionnée.
*/

import 'package:flutter/material.dart';
import 'package:my_trip08_activity_card/models/activity_model.dart';
import 'package:my_trip08_activity_card/datas/data.dart' as data;
import 'package:my_trip08_activity_card/views/city/widgets/activity_card.dart';

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
        child: Column(
          children: [
            // Boucle dans la liste activities (définie + haut)
            for(var activity in widget.activities)
              ActivityCard(
                activity: activity
              ),
          ],
        ),
      ),
    );
  }
}
