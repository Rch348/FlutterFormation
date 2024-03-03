// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
  Création d'une sauvegarde de la sélection des activités, renvoyant une boîte de dialogue pour confirmer :
  - Fonction saveTrip()
  - Bouton renvoyant une boîte de dialogue pour confirmation sélection
*/

import 'package:flutter/material.dart';
import 'package:trip_app/datas/data.dart' as data;
import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/city_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/views/city/widgets/activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_overview.dart';
import 'package:trip_app/views/home/home_view.dart';

class CityView extends StatefulWidget {
  static const String routeName = '/city';
  final List<Activity> activities = data.activities;
  final City city;

  // Ne pas mettre 'activities' ou 'routeName' en required car ce sont des variables initialisées
  // alors que city ne l'est pas.
  CityView({super.key, required this.city});

  showContext({required BuildContext context, required List<Widget> children}) {
    var orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: children,
      );
    } else {
      return Column(
        children: children,
      );
    }
  }

  @override
  State<CityView> createState() => _CityViewState();
}

class _CityViewState extends State<CityView> {
  late Trip mytrip;
  late int index;

  @override
  // Similaire à un constructeur.
  void initState() {
    super.initState();

    mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());
    index = 0;
  }

  List<Activity> get tripActivities {
    return widget.activities
        .where((activity) => mytrip.activities.contains(activity.id))
        .toList();
  }

  double get amount {
    // return mytrip.activities.fold(0.00, (total, activityId) {
    //   var activity = widget.activities.firstWhere((activity) => activity.id == activityId);
    //   return total + activity.price;
    // });

    double total = 0.00;

    for (var activityId in mytrip.activities) {
      for (var activity in widget.activities) {
        if (activityId == activity.id) {
          total += activity.price;
          break;
        }
      }
    }
    return total;
  }

  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(Duration(days: 1)),
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

  void toggleActivity(String id) {
    setState(() {
      mytrip.activities.contains(id)
          ? mytrip.activities.remove(id)
          : mytrip.activities.add(id);
    });
  }

  void deleteTripActivity(String id) {
    setState(() {
      mytrip.activities.remove(id);
    });
  }

  void saveTrip() {
    // Affiche une boîte de dialogue au dessus du contenu actuel 
    showDialog(
        context: context,
        builder: (context) {
          // Utilisé avec showDialog pour personnaliser la boîte de dialogue.
          return SimpleDialog(
            title: Text('Voulez-vous sauvegarder votre voyage ?'),
            contentPadding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context, '/');
                    },
                    child: Text('Annuler'),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.pop(context, 'save');
                    },
                    child: Text('Sauvegarder'),
                  ),
                ],
              )
            ],
          );
        }).then((result) {
      // print(result);
      Navigator.pushNamed(context, HomeView.routeName);
    });
  }

  // 2eme façon d'écrire
  // void saveTrip() async {
  //   final result = await showDialog(
  //       context: context,
  //       builder: (context) {
  //         return SimpleDialog(
  //           title: Text('Voulez-vous sauvegarder votre voyage ?'),
  //           contentPadding: EdgeInsets.all(10),
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               children: [

  //                 TextButton(
  //                   onPressed: () {},
  //                   child: Text('Annuler'),
  //                 ),

  //                 SizedBox(width: 24,),

  //                 FilledButton(
  //                   onPressed: () {Navigator.pop(context, 'save');},
  //                   child: Text('Sauvegarder'),
  //                 ),
  //               ],
  //             )
  //           ],
  //         );
  //       });

  //       Navigator.pushNamed(context, HomeView.routeName);
  // }

  @override
  Widget build(BuildContext context) {
    // final City city = ModalRoute.of(context)!.settings.arguments as City;

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text(
          'Organisation voyage'
        ),
        actions: [
          Icon(
            Icons.more_vert
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: widget.showContext(
          context: context,
          children: [
            TripOverview(
              cityName: widget.city.name,
              setDate: setDate,
              trip: mytrip,
              amount: amount,
            ),
            Expanded(
              child: index == 0
                  ? ActivityList(
                      activities: widget.activities,
                      selectedActivities: mytrip.activities,
                      toggleActivity: toggleActivity,
                    )
                  : TripActivityList(
                      activities: tripActivities,
                      deleteTripActivity: deleteTripActivity),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: saveTrip,
        child: Icon(
          Icons.save
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map
            ),
            label: 'Découverte',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.stars
            ),
            label: 'Mes activités',
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
