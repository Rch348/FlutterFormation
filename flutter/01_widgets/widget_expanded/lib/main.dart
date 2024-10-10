import 'package:flutter/material.dart';

void main() 
{
   runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
   const MyApp({super.key});

   // This widget is the root of your application.
   @override
   Widget build(BuildContext context) 
   {
      return Column
      (
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: 
         [
            Container
            (
               color: Colors.red,
               height: 150.0,
            ),
            // Expanded s'étale sur tout l'espace disponible et récupère en + les autres espaces sur l'écran.
            Expanded
            (
               child: Container
               (
                  color: Colors.brown,
                  height: 150.0,
               )   
            ),
            Container
            (
               color: Colors.indigo,
               height: 150.0,
            ),
            Expanded
            (
               // Flex dit au conteneur ambre de prendre 2 fois la taille du conteneur marron
               flex: 2,
               child: Container
               (
                  color: Colors.amber,
                  height: 150.0,
               )
            ),
         ],
      );
   }
}
