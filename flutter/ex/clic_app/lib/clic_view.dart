// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClicView extends StatefulWidget 
{
   const ClicView(
      {
         super.key
      }
   );

   @override
   State<ClicView> createState() => _ClicViewState();
}

class _ClicViewState extends State<ClicView> 
{
   int compteur = 0;
   List<Map> meilleursScores = [];

   void incrementCompteur()
   {
      setState
      (
         () 
         {
            compteur++;
         }
      );
   }

   void ajouterScore(compteur) 
   {
      Map 
      (

      );
   }

   @override
   Widget build(BuildContext context) 
   {
      return Scaffold
      (
         appBar: AppBar
         (
            title: Text
            (
               'Cliques tant que t\'as des doigts !'
            ),
            backgroundColor: Colors.deepOrange,
         ),

         body: Container
         (
            color: Colors.grey.shade300,
            child: Center
            (
               child: Column
               (
                  mainAxisAlignment: MainAxisAlignment.center,
               //   crossAxisAlignment: CrossAxisAlignment.end,
                  children: 
                  [
                     Row
                     (
                        mainAxisAlignment: MainAxisAlignment.center,         
                        children: 
                        [
                           Text
                           (
                              'Tu as cliqué :',
                              style: TextStyle
                              (
                                 fontSize: 27
                              )
                           ),
                        ]   
                     ),
                     Row
                     (
                        mainAxisAlignment: MainAxisAlignment.center,         
                        children: 
                        [
                           Text
                           (
                              '$compteur fois.',
                              style: TextStyle
                              (
                                 fontSize: 38
                              )
                           ),
                        ],
                     ),
                        
                     Container
                     (
                        height: 150,
                        width: 150,
                        child: FittedBox
                        (
                           child: FloatingActionButton.extended
                           (  
                              backgroundColor: Colors.grey.shade900,
                              foregroundColor: Colors.grey.shade300,
                              splashColor: Colors.red.shade900,
                              onPressed: incrementCompteur, 
                              label: Text
                              (
                                 'Cliques ici',
                              ),
                           ),
                        ),
                     )
                  ],
               ),
            ),
         ),
      );
   }
}