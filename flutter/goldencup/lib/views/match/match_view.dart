// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:goldencup/views/match/widgets/tombola_card.dart';

class Match_View extends StatelessWidget
{
    const Match_View({super.key});
    
    @override
    Widget build(BuildContext context)
    {
        return ListView
        (
            children: 
            [
                Tombola_Card
                (
                    isOpen: true,
                ),
                Tombola_Card
                (
                    isOpen: false,
                ),
            ],
        );
    }
}