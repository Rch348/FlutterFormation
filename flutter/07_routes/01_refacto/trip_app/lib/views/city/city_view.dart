import 'package:flutter/material.dart';
import 'package:trip_app/datas/data.dart' as data;
import 'package:trip_app/models/activity_model.dart';
import 'package:trip_app/models/trip_model.dart';
import 'package:trip_app/views/city/widgets/activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_activity_list.dart';
import 'package:trip_app/views/city/widgets/trip_overview.dart';
// import 'package:trip_app/views/home/home_view.dart';

class CityView extends StatefulWidget {
  CityView({super.key});

  final List<Activity> activities = data.activities;

  // Fonction qui décide de la structure d'affichage en fonction de l'orientation du téléphone 
  showContext({ required BuildContext context, required List<Widget> children }){

    // Récupération de l'orientation du téléphone
    var orientation = MediaQuery.of(context).orientation;

    if( orientation == Orientation.landscape ){
      return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        );
    }else {
      return Column(children: children,);
    }
  }

  @override
  State<CityView> createState() => _CityViewState();
}

class _CityViewState extends State<CityView> {
  late Trip mytrip;
  late int index;

  @override
  void initState() {
    super.initState();

    mytrip = Trip(city: 'Paris', activities: [], date: DateTime.now());
    index = 0;
  }

  List<Activity> get tripActivities {

    return widget.activities.where((activity) => mytrip.activities.contains(activity.id)).toList();

  }


  void setDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 1)),
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((newDate) {
      if (newDate != null) {
        setState(() {
          mytrip.date = newDate;
        });
      }
    });
  }

  void switchIndex(newIndex) {
    setState(() {
      index = newIndex;
    });
  }

  void toggleActivity(String id){
      setState(() {
        mytrip.activities.contains(id) ? mytrip.activities.remove(id) : mytrip.activities.add(id);
      });
  }

  void deleteTripActivity(String id){
    setState(() {
      mytrip.activities.remove(id);
    });
  }


  @override
  Widget build(BuildContext context) {
    // Contrôle dans le terminal de l'id des activités sélectionnées.
    print('liste des activités selectionnées : ${mytrip.activities}');

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: const Text('Organisation voyage'),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: widget.showContext(
            context: context,
            children: [
    
              TripOverview(setDate: setDate, trip: mytrip),
              Expanded(
            
                child: index == 0
                    ? ActivityList(
                        activities: widget.activities,
                        selectedActivities: mytrip.activities,
                        toggleActivity: toggleActivity,
                      )
                    : TripActivityList(activities: tripActivities, deleteTripActivity: deleteTripActivity),
              ),
            ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Découverte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars),
            label: 'Mes activités',
          ),
        ],
        onTap: switchIndex,
      ),
    );
  }
}
