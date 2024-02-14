// ignorefor_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:goldencup/views/menu_view.dart';
import 'package:goldencup/views/ligue/ligue_view.dart';

class GoldenCup extends StatelessWidget
{
    const GoldenCup({super.key});
    
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            debugShowCheckedModeBanner: false,
            home: Menu_View(),

            /*initialRoute: "/Home",
            routes: 
            {
                "/Home": (context) { return const Home(); },
                "/Ligue": (context) { return const Ligue(); },
            },*/
        );
    }
}