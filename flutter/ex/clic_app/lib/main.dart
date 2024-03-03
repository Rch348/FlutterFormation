import 'package:flutter/material.dart';
import 'package:clic_app/clic_view.dart';

void main() 
{
   runApp
   (
      const ClicApp()
   );
}

class ClicApp extends StatelessWidget 
{
   const ClicApp
   (
      {
         super.key
      }
   );

   @override
   Widget build(BuildContext context) 
   {
      return const MaterialApp
      (
         debugShowCheckedModeBanner: false,
         title: 'Clic App',
         home: ClicView(),
      );
   }
}
