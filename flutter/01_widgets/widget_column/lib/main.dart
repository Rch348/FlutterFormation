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
      // return Column
      // (
      //    mainAxisAlignment: MainAxisAlignment.center,
      //    verticalDirection: VerticalDirection.down, // Par défault
      //    textDirection: TextDirection.ltr,
      //    // CrossAxisAlignment ne fonctionne que si on a préalablement défini une direction
      //    crossAxisAlignment: CrossAxisAlignment.start, // Stretch : étire le contenu sur toute la largeur disponible
      //    children: 
      //    [

      //       Container
      //       (
      //          color: Colors.red, width: 100, height: 100,
      //       ),
      //       Container
      //       (
      //          color: Colors.green, width: 100, height: 100,
      //       ),
      //       Container
      //       (
      //          color: Colors.blue, width: 100, height: 100,
      //       ),
      //       Container
      //       (
      //          color: Colors.yellow, width: 100, height: 100,
      //       ),

      //    ]
      // );
      return Row
      (
         textDirection: TextDirection.ltr,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: 
         [
            Column
            (
               mainAxisAlignment: MainAxisAlignment.start,
               textDirection: TextDirection.ltr,
               children: 
               [
                  Container
                  (
                     color: Colors.red, width: 100, height: 100,
                  ),
                  Container
                  (
                     color: Colors.green, width: 100, height: 100,
                  ),
                  Container
                  (
                     color: Colors.blue, width: 100, height: 100,
                  ),
                  Container
                  (
                     color: Colors.yellow, width: 100, height: 100,
                  ),
               ],
            ),
            Column
            (
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.end,
               textDirection: TextDirection.ltr,
               children: 
               [
                  Container
                  (
                     color: Colors.red, width: 100, height: 100,
                  ),
                  Container
                  (
                     color: Colors.green, width: 100, height: 100,
                  ),
                  Container
                  (
                     color: Colors.blue, width: 100, height: 100,
                  ),
                  Container
                  (
                     color: Colors.yellow, width: 100, height: 100,
                  ),
               ]
            )
         ]
      );
   }
}
