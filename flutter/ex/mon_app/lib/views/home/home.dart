// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text(
            'LeBonCoin',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          actions: [Icon(Icons.more_vert)],
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          color: Colors.grey,
          // child: GridView.builder(
          //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 2),
          //     itemBuilder: (context, index) {

          //     }),

          child: SingleChildScrollView(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: SizedBox(
                  height: 400,
                  child: Card(
                      elevation: 3.0,
                      color: Colors.white,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Rechercher une annonce',
                              style: TextStyle(fontWeight: FontWeight.w900),
                              textAlign: TextAlign.center,
                            ),
                            Image.asset('assets/images/loupe.png')
                          ])),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 400,
                  child: Card(
                      color: Colors.blue,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                              'Publier votre annonce',
                              style: TextStyle(
                                fontWeight: FontWeight.w900 
                              ),   
                              textAlign: TextAlign.center,
                            ),
                            ),    
                            Image.asset('assets/images/publier.png')
                          ])),
                ),
              ),
            ]),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Mes annonces'
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          ]
        ),  
      );
  }
}
