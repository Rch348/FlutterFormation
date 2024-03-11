import 'package:flutter/material.dart';

class Toggle extends StatefulWidget 
{
   const Toggle({super.key});

   @override
   State<Toggle> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Toggle> 
{
   bool clicked = true;

   void _toggle() 
   {
      setState
      (
         () 
         {
            clicked = !clicked;
         }
      );
   }

   @override
   Widget build(BuildContext context) 
   {
      return Padding
      (
         padding: const EdgeInsets.only(top: 400),
         child: Column
         (
            children: 
            [
               FilledButton
               (
                  onPressed: _toggle,
                  style: ButtonStyle
                  (
                     backgroundColor: MaterialStatePropertyAll
                     (
                        clicked ? Colors.amber : Colors.indigo
                     )
                  ),
                  child: Text
                  (
                     clicked ? 'Cliques pour voir...' : 'T\'es un génie !'
                  )
               ),
               Text
               (
                  // clicked ? 'Le bouton est désactivé' : 'Le bouton est activé',
                  'Le bouton est ${clicked ? 'activé' : 'désactivé'}',
                  style: const TextStyle
                  (
                     fontSize: 20
                  )
               )
            ]
         )
      );
   }
}
