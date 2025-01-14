// ignore_for_file: avoid_print

/*
  Ajout de mediaquerie changeant la mise en forme en fonction de l'orientation du téléphone.
  Ajout de la fonction deleteTripActivity pour supprimer les activités sélectionnées grâce à l'icône poubelle.
*/

import 'package:flutter/material.dart';
import 'package:trip_app/datas/data.dart' as data;
import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/views/city/widgets/activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_overview.dart';
// import 'package:trip_app/views/home/home.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  // fonction qui décide de la structure d'affichage (ici, une liste de children) en fonction 
  //de l'orientation du téléphone :
  showContext({ required BuildContext context, required List<Widget> children }){

    // on récupere l'orientation du téléphone
    var orientation = MediaQuery.of(context).orientation;

    if( orientation == Orientation.landscape ){
      return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        );
    } else {
      return Column(children: children);
    }
  }

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  late Trip mytrip;
  late int index;

  @override
  // Fonction pour dire de faire référence au parent de la classe initState
  void initState() {
    super.initState();
    
    mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());
    index = 0;
  }

  List<Activity> get tripActivities {

    return widget.activities.where((activity) => mytrip.activities.contains(activity.id)).toList();

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
    });
  }

  void toggleActivity(String id){
      setState(() {
        mytrip.activities.contains(id) ? mytrip.activities.remove(id) : mytrip.activities.add(id);
      });
  }

  void deleteTripActivity(String id){
    setState(() {
      mytrip.activities.remove(id);
    });
  }


  @override
  Widget build(BuildContext context) {

    print('liste des activités selectionnées : ${mytrip.activities}');

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: const Text('Organisation voyage'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: widget.showContext(
            context: context,
            children: [
    
              TripOverview(setDate: setDate, trip: mytrip),
              Expanded(
            
                child: index == 0
                    ? ActivityList(
                        activities: widget.activities,
                        selectedActivities: mytrip.activities,
                        toggleActivity: toggleActivity,
                      )
                    : TripActivityList(activities: tripActivities, deleteTripActivity: deleteTripActivity),
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
