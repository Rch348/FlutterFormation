import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          // border: Border.all(color:),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.2),
              spreadRadius: 2.0,
              blurRadius: 40.0,
              offset:Offset(40, 0)
            )
          ]
        ),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: const Text('Bonjour', 
        )
      ),
    );
  }
}
