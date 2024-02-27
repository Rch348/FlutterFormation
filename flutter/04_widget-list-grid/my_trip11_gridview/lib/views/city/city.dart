import 'package:flutter/material.dart';
import 'package:my_trip11_gridview/models/activity_model.dart';
import 'package:my_trip11_gridview/datas/data.dart' as data;
import 'package:my_trip11_gridview/views/city/widgets/activity_card.dart';

/*
  Ce fichier gère la disposition des activités de chaque ville : sous forme de grille (gridView).
*/

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities = data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Paris'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),

        // child: ListView.builder(
        //   itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
        //   itemCount: widget.activities.length,
        // ),

        // child: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2
        //   ),
        //   children: widget.activities.map((actvity) => ActivityCard(activity: actvity)).toList(),
        // ),

// Le + opti quand beaucoup de donnée car affiche seulement les données visibles lors du scroll.
        // child: GridView.builder(
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //   itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
        //   itemCount: widget.activities.length,
        // ),

// Le + opti pour l'exemple car pas beaucoup de données.
        // child: GridView.count(
        //   crossAxisCount: 2,
        //   mainAxisSpacing: 4,
        //   crossAxisSpacing: 4,
        //   children: widget.activities.map((activity) => ActivityCard(activity: activity,)).toList(),
        // ),

        child: GridView.extent(
          maxCrossAxisExtent: 400,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: widget.activities
              .map((actvity) => ActivityCard(
                    activity: actvity,
                  ))
              .toList(),
          
        ),
      ),
    );
  }
}
