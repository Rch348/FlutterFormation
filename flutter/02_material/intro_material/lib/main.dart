import 'package:flutter/material.dart';

void main() 
{
   runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) 
   {
      return MaterialApp
      (
         title: 'Home Page',
         theme: ThemeData
         (
            primarySwatch: Colors.red,
         ),
         home: Container
         (
            alignment: Alignment.center,
            child: const Text
            (
               'Salut!'
            ),
         )      
      );
   }
}
