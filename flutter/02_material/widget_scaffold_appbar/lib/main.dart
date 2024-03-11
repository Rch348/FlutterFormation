// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

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
            colorSchemeSeed: Colors.blue,
         ),
         home: Scaffold
         (

            appBar: AppBar
            (
               title: Text
               (
                  'HomePage'
               ),
               actions: 
               [
                  IconButton
                  (
                     onPressed: () => 
                     {
                        print('click')                   
                     },
                     icon: Icon
                     (
                        Icons.more_vert
                     ),
                  )
               ],
            ),

            body: Container
            (
               alignment: Alignment.center,
               child: Text
               (
                  'Salut tout le monde !'
               ),
            ),

            bottomNavigationBar: BottomNavigationBar
            (
               items: 
               [
                  BottomNavigationBarItem
                  (
                     icon: Icon
                     (
                        Icons.home
                     ),
                     label: 'Home',
                  ),
                  BottomNavigationBarItem
                  (
                     icon: Icon
                     (
                        Icons.flight_land
                     ),
                     label: 'Land',
                  ),
                  BottomNavigationBarItem
                  (
                     icon: Icon
                     (
                        Icons.motorcycle
                     ),
                     label: 'MoveTo',
                  ),
               ],               
            ),

            drawer: Drawer
            (
               child: Column
               (
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: 
                  [
                     Container
                     (
                        padding: EdgeInsets.all(20) ,
                        child: Row
                        (
                           children: 
                           [
                              Icon
                              (
                                 Icons.account_circle
                              ),
                              Text
                              (
                                 'Profil'
                              )
                           ],
                        ),
                     ),
                     Container
                     (
                        padding: EdgeInsets.all(20) ,
                        child: Row
                        (
                           children: 
                           [
                              Icon
                              (
                                 Icons.settings
                              ),
                              Text
                              (
                                 'Paramètres'
                              )
                           ],
                        ),
                     ),
                  ]
               ),
            ),
            
         )
      );
   }
}
