import 'package:flutter/material.dart';
import 'package:trip_app/shared_widgets/tripdrawer.dart';

class TripsView extends StatefulWidget {
  static const String routeName = '/trips';
  const TripsView({super.key});

  @override
  State<TripsView> createState() => _TripsViewState();
}

class _TripsViewState extends State<TripsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes voyages'),
      ),
      drawer: TripDrawer(),
      body: Container(
        alignment: Alignment.center,
        child: Text('TripsView'),),
    );
  }
}