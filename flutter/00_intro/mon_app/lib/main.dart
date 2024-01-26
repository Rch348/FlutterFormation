import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

String _name = 'Daishi';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      alignment: Alignment.topCenter,
      child: Container(
          color: Colors.indigoAccent,
          width: 300,
          height: 40,
          child: Text(
            'Hey, $_name! How are you ?',
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          )
      ),
    );
  }
}
