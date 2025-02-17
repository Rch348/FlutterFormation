import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
// import 'package:trip_app/views/city/city_view.dart';
import 'package:trip_app/views/home/widgets/city_card.dart';
import 'package:trip_app/datas/data.dart' as data;


class HomeView extends StatefulWidget {

  final List<City> cities = data.cities;

  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('MyTrip'),
        actions: const [
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.grey[100],
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var city in widget.cities)
                  CityCard(city : city),
              ],
            ),
          )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                }),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                icon: const Icon(Icons.location_city),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CityView()),
                  // );
                }),
            label: 'Villes',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.motorcycle),
            label: 'MoveTo',
          ),
        ],
      ),
    );
  }
}
