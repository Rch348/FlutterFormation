// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:goldencup/data/application_colors.dart';

class Open_State extends StatelessWidget
{
    final bool isOpen;

    const Open_State({
        super.key,
        this.isOpen = true,
    });
    
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            decoration: BoxDecoration
            (
                color: isOpen ? BLUE_LIGHT : RED_LIGHT,
                borderRadius: BorderRadius.all(Radius.circular(4)),
            ),

            child: Text
            (
                isOpen ? "Ouvert" :  "Fermé",
                style: TextStyle
                (
                    color: isOpen ? BLUE : RED,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                ),
            ),
        );
    }
}