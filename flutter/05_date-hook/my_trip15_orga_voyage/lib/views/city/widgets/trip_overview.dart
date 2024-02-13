import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_trip15_orga_voyage/models/trip_model.dart';

class TripOverview extends StatelessWidget {
  final VoidCallback setDate;
  final Trip trip;

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
                TextStyle(fontSize: 24, decoration: TextDecoration.underline),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  DateFormat('d/M/y').format(trip.date),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                  onPressed: setDate, child: const Text('Sélectionner une date'))
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
                style: TextStyle(fontSize: 20),
              )),
              Text(
                '$amount €',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
