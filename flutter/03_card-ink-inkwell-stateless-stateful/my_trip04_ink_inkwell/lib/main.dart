// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

/*
  Point de départ de l'application : démarre sur la page home.dart.
*/

import 'package:flutter/material.dart';
import 'package:my_trip03_ink_inkwell/home.dart';

void main() 
{
   runApp(MyTrip());
}

class MyTrip extends StatelessWidget 
{
   @override
   Widget build(BuildContext context) 
   {
      return MaterialApp
      (
         debugShowCheckedModeBanner: false,
         home: Home(),
         );
   }
}
