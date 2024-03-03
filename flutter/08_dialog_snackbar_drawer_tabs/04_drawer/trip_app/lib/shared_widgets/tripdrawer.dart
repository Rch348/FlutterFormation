// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trip_app/views/home/home_view.dart';

class TripDrawer extends StatelessWidget {
  const TripDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // En-tête de panneau latéral.
          DrawerHeader(
            decoration: BoxDecoration(
              // Création d'un gradient de couleur pour l'arrière-plan de l'en-tête du panneau latéral.
              gradient: LinearGradient(
                colors: [
                  // Couleur primaire par défaut du thème material.
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor.withOpacity(0.5),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
            child: Text(
              'Trip',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 30
              ),
            ),
          ), 
          ListTile(
            leading: Icon(
              Icons.home
            ),
            title: Text(
              'Accueil'
            ),
            onTap: () {
              Navigator.pushNamed(
                context, HomeView.routeName
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.flight
            ),
            title: Text(
              'Mes voyages'
            ),
            onTap: () {
              Navigator.pushNamed(
                context, 
                HomeView.routeName
              );
            },
          ),
        ],
      ));
  }
}