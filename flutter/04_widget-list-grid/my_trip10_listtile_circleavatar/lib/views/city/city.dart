// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_trip10_listtile_circleavatar/models/activity_model.dart';
import 'package:my_trip10_listtile_circleavatar/datas/data.dart' as data;
import 'package:my_trip10_listtile_circleavatar/views/city/widgets/activity_card.dart';

class City extends StatefulWidget {
  City({super.key});

  final List<Activity> activities =  data.activities;

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back
        ),
        title: Text(
          'Paris'
        ),
        actions: const [
          Icon(
            Icons.more_vert
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: (context, index) => ActivityCard(activity: widget.activities[index]),
          itemCount: widget.activities.length,
        ),
      ),
    );
  }
}
