/*
  Ajout de la fonction switchIndex qui met à jour la variable 'index' après un tap sur l'une des icônes de 
  la BottomNavBar puisque chaque icône correspond à l'index de la liste d'item grâce au currentIndex.
*/

import 'package:flutter/material.dart';
// import 'package:my_trip16_bottom_nav_bar/views/city/widgets/activity_card.dart';
// import 'package:intl/intl.dart';
import 'package:my_trip16_bottom_nav_bar/datas/data.dart' as data;
import 'package:my_trip16_bottom_nav_bar/models/activity_model.dart';
import 'package:my_trip16_bottom_nav_bar/models/trip_model.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/activity_list.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/trip_activity_list.dart';
import 'package:my_trip16_bottom_nav_bar/views/city/widgets/trip_overview.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  Trip mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());

  // Initialisation de l'index de la liste d'item de la bottomNavBar.
  int index = 0;

  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((newDate) {
      if (newDate != null) {
        // Fonction générique pour modifier l'état d'un objet.
        setState(() {
          mytrip.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
      print(newIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Organisation voyage'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*
              Appel (instanciation) de la classe TripOverview définie dans trip_overview.dart et ses paramètres requis
              définis en lignes 26 et 31.
            */
            TripOverview(setDate: setDate, trip: mytrip),
            Expanded(
              // child: ActivityList(activities: widget.activities)
              // child: TripActivityList()
              child: index == 0
                  ? ActivityList(activities: widget.activities)
                  : const TripActivityList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Découverte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: 'Mes activités',
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
