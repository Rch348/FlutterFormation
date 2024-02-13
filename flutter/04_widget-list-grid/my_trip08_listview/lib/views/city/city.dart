import 'package:flutter/material.dart';
import 'package:my_trip08_listview/models/activity_model.dart';
import 'package:my_trip08_listview/views/city/widgets/activity_card.dart';
import '../../datas/data.dart' as data;

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
        title: const Text('Montpellier'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        // child: Column(
        //   children: [
        //     for(var activity in widget.activities)
        //       ActivityCard(activity: activity),
        //   ],
        // )

        // 1ère façon (pas très optimisée si beaucoup de données):
        // child: ListView(
        //   children: 
        //     // for(var activity in widget.activities)
        //     //   ActivityCard(activity: activity),
           
        //     // widget.activities.map((activity) {
        //     //   return ActivityCard(activity : activity))
        //     // }).toList(), 

        //     widget.activities.map((activity) => ActivityCard(activity: activity)).toList(),
        // ),

        // Le + opti et utilisé : ListView.builder
        // child: ListView.builder(
        //   itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]), // Le 'context' permet d'indiquer l'emplacement au niveau de l'arborescence
        //   itemCount: widget.activities.length,
        // ),
        child: ListView.separated(
          // Le 'context' permet d'indiquer l'emplacement au niveau de l'arborescence
          itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]), 
          // Divider : permet de séparer. Equivalent de <hr> en HTML
          // separatorBuilder: (context, index) => Divider(),
          // SizedBox() permet de créer des espacements vides entre 2 blocs 
          separatorBuilder: (context, index) => const SizedBox(height: 10,),
          itemCount: widget.activities.length,
        ),
      ),
    );
  }
}
