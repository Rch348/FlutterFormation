/*
  Dates : Import de la librairie intl.dart et de trip_model.dart.
  Création d'une instance de la classe Trip dans la variable mytrip (de type Trip (classe)) où l'on affecte (l27):
  - Le nom de la ville
  - Une liste d'activité
  - La date actuelle
*/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_trip13_datetime/models/activity_model.dart';
import 'package:my_trip13_datetime/datas/data.dart' as data;
import 'package:my_trip13_datetime/models/trip_model.dart';
import 'package:my_trip13_datetime/views/city/widgets/activity_card.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {

  Trip mytrip = Trip(
    city: 'Paris', 
    activities: [], 
    // Affectation de la date actuelle à la propriété 'date' de la classe Trip.
    date: DateTime.now()
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back
        ),
        title: const Text(
          'Paris'
        ),
        actions: const [
          Icon(
            Icons.more_vert
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            DateFormat('d/M/y').format(mytrip.date)
                          ),
                          // child: Text(DateFormat('d/M/y').format(DateTime.now())),
                          // child: Text(DateFormat('EEEE d, LLLL, y').format(DateTime.now())),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Sélectionner une date'
                          )
                        )
                      ],
                    )
                  ],
                )),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: widget.activities.map((actvity) => ActivityCard(activity: actvity)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
