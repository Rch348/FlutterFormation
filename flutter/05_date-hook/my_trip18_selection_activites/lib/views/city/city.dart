/*
  Ajout de ToggleActivity prenant l'id en argument de l'activité lors de l'évènement onTap (dans activity_card.dart)
  permettant de sélectionner/désélectionner l'activité tapée : l'id sera ajouté/supprimé
*/

import 'package:flutter/material.dart';

import 'package:my_trip18_selection_activites/datas/data.dart' as data;
import 'package:my_trip18_selection_activites/models/activity_model.dart';
import 'package:my_trip18_selection_activites/models/trip_model.dart';
import 'package:my_trip18_selection_activites/views/city/widgets/activity_list.dart';
import 'package:my_trip18_selection_activites/views/city/widgets/trip_activity_list.dart';
import 'package:my_trip18_selection_activites/views/city/widgets/trip_overview.dart';
import 'package:my_trip18_selection_activites/views/home/home.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  late Trip mytrip;
  late int index;

  @override
  void initState() {
    super.initState();
     
    mytrip = Trip(
      city: 'Paris', 
      activities: [], 
      date: DateTime.now()
    );
    index = 0;
  }

  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((newDate) {
      if (newDate != null) {
        setState(() {
          mytrip.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    }
    );
  }

  void toggleActivity(String id){
      setState(() {
        mytrip.activities.contains(id) ? mytrip.activities.remove(id) : mytrip.activities.add(id);
      });
  }

  @override
  Widget build(BuildContext context) {
    print('Build city');
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: const Text(
          'Organisation voyage'
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home()
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back
              )
            ),
            TripOverview(
              setDate: setDate, 
              trip: mytrip
            ),
            Expanded(
              // child: ActivityList(activities: widget.activities)
              // child: TripActivityList()
              child: index == 0
                  ? ActivityList(
                      activities: widget.activities,
                      selectedActivities: mytrip.activities,
                      toggleActivity: toggleActivity,
                    )
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
