import 'package:flutter/material.dart';
import 'package:trip_app/models/city_model.dart';
// import 'package:trip_app/views/city/city_view.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
      elevation: 2,
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              fit: BoxFit.cover,
              image: AssetImage(city.image),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return CityView();
                  //     },
                  //   ),
                  // );
                  
                  // arguments: city => au cas où on veut passer des données à CityView (jettera une erreur car
                  // on envoie pas de données et ne peut accepter de type Null)
                  Navigator.pushNamed(context, '/city', arguments: city);

                },
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                color: Colors.black54,
                child: Text(
                  city.name,
                  style: const TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
