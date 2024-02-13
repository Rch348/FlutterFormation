import 'package:flutter/material.dart';
import 'package:my_trip08_listview/models/activity_model.dart';

class ActivityCard extends StatelessWidget {
  
  final Activity activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Pour être sûr qu'il prenne toute la place
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Text(activity.name),
          Image.asset(activity.image, fit: BoxFit.cover),
        ]
      )
    );
  }
}
