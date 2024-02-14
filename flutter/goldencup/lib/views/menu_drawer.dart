// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 390,
        height: 700,
        color: Colors.white,   
        child: ListView(
          padding: EdgeInsets.all(10), 
          children: [
            
                Card(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Récompense',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Tombola',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("assets/images/saucisson.png", width: 80,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/logo-vnb.png", width: 80,),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(onPressed: () {}, 
                       
                        child: Text('Récupérer'))
                      ],
                    ),
                                  ],),
                  ),
                ),
                Card(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Récompense',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Tombola',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset("assets/images/saucisson.png", width: 80,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/logo-vnb.png", width: 80,),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(onPressed: () {}, 
                        style: ButtonStyle(
                          
                         
                        ),
                        child: Text('Récupérer'))
                      ],
                    ),
                                  ],),
                  ),
                )
                
             
        ]));
  }
}
