import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyTrip());
}

class MyTrip extends StatelessWidget 
{
   const MyTrip({super.key});

   @override
   Widget build(BuildContext context) 
   {
      return MaterialApp
      (
         debugShowCheckedModeBanner: false,
         home: Scaffold
         (
            appBar: AppBar
            (
               // centerTitle: true,
               leading: const Icon
               (
                  Icons.home
               ),
               title: const Text
               (
                  'MyTrip'
               ),
               actions: const 
               [
                  Icon
                  (
                     Icons.more_vert
                  )
               ]
            ),
            body: Container
            (
               padding: const EdgeInsets.all(10),
               color: Colors.grey[100],
               child: Column
               (
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: 
                  [
                     Card
                     (
                        surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
                        elevation: 2,
                        child: Container
                        (
                           height: 150,
                        )
                     ),
                     Card
                     (
                        elevation: 5,
                        child: SizedBox
                        (
                           height: 150,
                           child: 
                           Stack
                           (
                              fit: StackFit.expand, 
                              children: 
                              [
                                 Image.asset
                                 (
                                    'assets/images/Montpellier.jpeg',
                                    fit: BoxFit.cover
                                 )
                              ]
                           )
                        )
                     ),
                     Card
                     (
                        elevation: 5,
                        child: Container
                        (
                           height: 150,
                        )
                     )
                  ]
               )
            )
         )
      );
   }
}
