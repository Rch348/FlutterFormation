// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(alignment: Alignment.center,
      child: Text('oops pas de bol'),),
    );
  }
}