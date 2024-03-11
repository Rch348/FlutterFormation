import 'package:flutter/material.dart';
import 'counter.dart';

class HomeScreen extends StatelessWidget 
{
   const HomeScreen({super.key});

   @override
   Widget build(BuildContext context) 
   {
      return Scaffold
      (
         appBar: AppBar
         (
            title: const Text
            (
               'Compteur'
            )
         ),
         body: const Center
         (
            child: Counter(),
         )
      );
   }
}
