import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(50),
        child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(
                    color: Colors.teal, width: 10.00, style: BorderStyle.solid),
                boxShadow: const [
              BoxShadow(
                  color: Colors.amber, spreadRadius: 15.0, blurRadius: 10.0)
            ])));
  }
}
