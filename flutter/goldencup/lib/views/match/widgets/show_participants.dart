// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Show_Participants extends StatelessWidget
{
    final int amount;
    
    const Show_Participants({
        super.key,
        this.amount = 0,
    });
    
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 24),
            child: Text
            (
                "$amount participants",
                style: TextStyle
                (
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                ),
            ),
        );
    }
}