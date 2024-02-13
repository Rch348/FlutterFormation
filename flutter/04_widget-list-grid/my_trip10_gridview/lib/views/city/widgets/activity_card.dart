import 'package:flutter/material.dart';
import 'package:my_trip10_gridview/models/activity_model.dart';

class ActivityCard extends StatelessWidget {
  final Activity activity;
  const ActivityCard({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: double.infinity, // Pour être sûr qu'il prenne toute la place
    //   margin: EdgeInsets.all(5),
    //   child: Column(
    //     children: [
    //       Text(activity.name),
    //       Image.asset(activity.image, fit: BoxFit.cover),
    //     ]
    //   )
    // );

    // return ListTile(
    //   leading: Image.asset(activity.image, width: 50),
    //   title: const Text('activity.name'),
    //   trailing: const Icon(Icons.more_horiz),
    // );

// Pour encadrer chaque activité : instancier Card avant ListTile
    // return Card(
    //   child: ListTile(
    //     leading: Image.asset(activity.image, width: 50),
    //     title: const Text('activity.name'),
    //     trailing: const Icon(Icons.more_horiz),
    //   ) 
    // );

    return Card(
      child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage(activity.image)),
        title: const Text('activity.name'),
        subtitle: const Text('activity.city'),
        // trailing: const Icon(Icons.more_horiz),
      ) 
    );

  }
}
