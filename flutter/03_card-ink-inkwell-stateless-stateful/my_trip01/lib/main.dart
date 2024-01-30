import 'package:flutter/material.dart';

void main() {
  runApp(MyTrip());
}

class MyTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                // centerTitle: true,
                leading: Icon(Icons.home),
                title: Text('MyTrip'),
                actions: [Icon(Icons.more_vert)]),
            body: Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[100],
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                          surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
                          elevation: 2,
                          child: Container(
                            height: 150,
                          )),
                      Card(
                          elevation: 5,
                          child: Container(
                              height: 150,
                              child: Stack(fit: StackFit.expand, children: [
                                Image.asset('assets/images/Montpellier.jpeg',
                                    fit: BoxFit.cover)
                              ]))),
                      Card(
                          elevation: 5,
                          child: Container(
                            height: 150,
                          ))
                    ]))));
  }
}
