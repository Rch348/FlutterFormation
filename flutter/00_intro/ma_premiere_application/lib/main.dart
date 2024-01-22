import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return const Text(
    //   'hello world',
    //   textDirection: TextDirection.ltr,
    // );
    // return const Center(
    //   child: Text(
    //     'Hello World!',
    //     textDirection: TextDirection.ltr,
    //     style: TextStyle(
    //       fontSize: 40,
    //       fontWeight: FontWeight.w900,
    //       color: Colors.deepOrange,
    //     ),
    //   )
    // );
    return const Center(
        child: Text.rich(TextSpan(
            text: 'Fr',
            style: TextStyle(
              color: Colors.blue,
            ),
            children: [
          TextSpan(
            text: 'an',
          )
        ])));
  }
}
