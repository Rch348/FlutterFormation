// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

/*
  Classe City avec sa liste d'activité propre.
*/

import 'package:flutter/material.dart';
import 'package:my_trip07_refacto/models/activity_model.dart';
// Conversion d'un chemin d'accès à un fichier en variable : On peut utiliser le fichier data.dart avec la variable data.
import 'package:my_trip07_refacto/datas/data.dart' as data;

class City extends StatefulWidget {
  City({super.key});

  // List contenant les différentes activités de la ville via la variable data.
  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Paris'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
