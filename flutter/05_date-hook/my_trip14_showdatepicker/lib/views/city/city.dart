/*
  Ajout du choix d'une date dans un calendrier :
  - Fonction setDate() contenant showDatePicker() (L32)
  - Appelée dans un ElevatedButton (L93)
*/

import 'package:flutter/material.dart';
import 'package:my_trip14_showdatepicker/views/city/widgets/activity_card.dart';
import 'package:intl/intl.dart';

import 'package:my_trip14_showdatepicker/datas/data.dart' as data;
import 'package:my_trip14_showdatepicker/models/activity_model.dart';
import 'package:my_trip14_showdatepicker/models/trip_model.dart';


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
    date: DateTime.now()
  );

  
  void setDate(){

    showDatePicker(
      context: context,
      
      // Pour mettre en Français :
      // locale: Locale('fr', 'fr'),
      initialDate: DateTime.now().add(const Duration(days: 1)),
      
      // firstDate = 1ère date sélectionnable (ici, la date actuelle).
      firstDate: DateTime.now(), 
      
      // lasDate = Dernière date au + tard sélectionnable (ici, jusqu'en 2025).
      // lastDate: DateTime.now().add(Duration(days: 730)),
      lastDate: DateTime(2025),
    
    // then = Future (fonction exécutée après celle qui la précède) prenant en argument la date sélectionnée dans showDatePicker.
    ).then((newDate) {
      // Si une date a été sélectionnée dans le showDatePicker, exécute la fonction 
      // setState pour mettre à jour la date affichée grâce à la variable mytrip.date.
      if(newDate != null){
        setState(() {
          mytrip.date = newDate;
        });
      }

    });

  }


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
                            // Widget Text affichant la date au format 'jour/mois/années'
                            DateFormat('d/M/y').format(mytrip.date)
                          ),
                          // child: Text(DateFormat('d/M/y').format(DateTime.now())),
                          // child: Text(DateFormat('EEEE d, LLLL, y').format(DateTime.now())),
                        ),
                        ElevatedButton(
                          onPressed: setDate,
                          child: const Text(
                            'Sélectionner une date'
                          )
                        )
                      ],
                    )
                  ],
                )
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: widget.activities.map((activity) => ActivityCard(activity: activity)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
