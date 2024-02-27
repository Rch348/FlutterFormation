import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_trip16_bottom_nav_bar/models/trip_model.dart';

class TripOverview extends StatelessWidget {
  // Callback car setDate définie dans city.dart et sera exécutée lorsque ce callback sera exécuté (invoqué, appelé).
  final VoidCallback setDate;
  final Trip trip;

  // Juste pour prévisualiser le montant total après sélection des activités => + tard.
  double get amount {
    return 0;
  }

  const TripOverview({super.key, required this.setDate, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 200,
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            'Paris',
            style:
              TextStyle(
                fontSize: 24, 
                decoration: TextDecoration.underline
              ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat('d/M/y').format(trip.date),
                  style: const TextStyle(
                    fontSize: 20
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: // Appel du callback.
                  setDate, // Éxecution de setDate grâce au callback.
                  child: const Text(
                    'Sélectionner une date'
                  )
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Expanded(
                  child: Text(
                   'Montant/personne',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  )
              ),
              Text(
                '$amount €',
                style: const TextStyle(
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
