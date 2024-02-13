import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(colorSchemeSeed: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HomePage'),
          elevation: 5, // Lors du scroll, les éléments 
          backgroundColor: Colors.blue,
          // titleTextStyle: TextStyle(),
          actions: [
            IconButton(onPressed: () => {print('click')}, icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: const Text('Salut Tout Le Monde!'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Symbols.home),
              label: 'Home' 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_land),
              label: 'Land'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cruelty_free),
              label: 'Lapin crétin'
            ),
          ],
          
        ),
        drawer: const Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(Icons.account_circle),
                  Text('Profil'),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.settings),
                  Text('Paramètres'),
                ],
              )
            ]),
        ),
      )
    );
  }
}
