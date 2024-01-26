import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.ltr,
      alignment: Alignment.center,
      children : [
        Container(
          width: 400,
          height: 400,
          color: Colors.amber,
        ),
        Container(
          width: 300,
          height: 300,
          color: Colors.purple,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.green,
        ),
      ]
    );
  }
}
