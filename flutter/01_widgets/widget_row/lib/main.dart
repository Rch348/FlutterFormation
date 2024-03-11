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
      return Column(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: 
         [

            Row
            (
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
               textDirection: TextDirection.ltr,
               children: 
               [
                  Expanded
                  (
                     child: Container
                     (
                        color: Colors.red,
                        height: 100,
                        width: 100,
                     ),
                  ),
                  Container
                  (
                     color: Colors.green,
                     height: 100,
                     width: 100,
                  ),
                  
                  Container
                  (
                     color: Colors.amber,
                     height: 100,
                     width: 100,
                  ),
               ],
            ),

            Row
            (
               crossAxisAlignment: CrossAxisAlignment.center,
               textDirection: TextDirection.ltr,
               children: 
               [
                  Expanded
                  (
                     child: Container
                     (
                        color: Colors.indigo,
                        height: 100,
                        width: 100,
                     ),
                  ),
                  Container            
                  (
                     color: Colors.white,
                     height: 100,
                     width: 100,
                  ),
                  
                  Container
                  (
                     color: Colors.purple,
                     height: 100,
                     width: 100,
                  ),
               ],
            )         
         ]
      );
   }
}
