import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _count = 0;
  double price = 10.4;

  void incrementer() {
    setState(() {
      _count++;
    });
  }

  void decrementer() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 400),
        
        child: Column(children: [
          Text('${price * _count}', style: TextStyle(fontSize: 30)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: decrementer, child: Text('-1')),
              Text(' $_count', style: TextStyle(fontSize: 20)),
              ElevatedButton(onPressed: incrementer, child: Text('+1')),
            ],
          )
        ]));
  }
}
