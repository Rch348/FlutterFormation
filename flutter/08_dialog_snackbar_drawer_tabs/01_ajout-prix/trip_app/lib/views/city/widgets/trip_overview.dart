// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:trip_app/models/trip_model.dart';

class TripOverview extends StatelessWidget {
  final VoidCallback setDate;
  // Issu de trip_model.dart.
  final Trip trip;
  // Ville sélectionnée contenant les activités proposées.
  final String cityName;
  // Montant des activités sélectionnées.
  final double amount;

  // Transféré dans city_view.dart.
  // double get amount {
  //   return 0;
  // }

  const TripOverview(
    {
      super.key,
      required this.setDate,
      required this.trip,
      required this.cityName,
      required this.amount,
    }
  );

  @override
  // Mediaqueries construisant un nouveau widget redimensionné en fonction de l'orientation du téléphone.
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      // Lorsque le téléphone est en mode paysage, la largeur du container de TripOverview est divisée par deux.
      //(Orientation = Enum Flutter)
      width: orientation == Orientation.landscape ? size.width * 0.5 : size.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // Affiche en premier le nom de la ville sélectionnée.
            cityName,
            style: TextStyle(
              fontSize: 24, 
              decoration: TextDecoration.underline
            ),
          ),
          // Pour espacer le nom de la ville de la ligne suivante.
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat('d/M/y').format(trip.date),
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: setDate, 
                child: Text(
                  'Sélectionner une date'
                )
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Montant/personne',
                  style: TextStyle(fontSize: 20),
                )
              ),
              Text(
                '$amount €',
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
