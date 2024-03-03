// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:goldencup/data/application_colors.dart';
import 'package:goldencup/views/match/widgets/open_state.dart';
import 'package:goldencup/views/match/widgets/show_participants.dart';
import 'package:goldencup/views/match/widgets/tombola_participation_state.dart';

class Tombola_Card extends StatelessWidget
{
    final bool isOpen;

    const Tombola_Card({
        super.key,
        this.isOpen = true,
    });
    
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            margin: EdgeInsets.all(16),
            child:  Column
            (
                children:
                [
                    Show_Participants
                    (
                        amount: 5,
                    ),

                    Container
                    (
                        decoration: BoxDecoration
                        (
                            boxShadow: 
                            [
                                BoxShadow
                                (
                                    color: GREY_LIGHT_MAIS_PAS_TROP,
                                    blurRadius: 16,
                                ),
                            ],
                        ),
                        child: Card
                        (
                            color: WHITE,
                            surfaceTintColor: WHITE,

                            child: Container
                            (
                                padding: EdgeInsets.all(8),
                                child: Column
                                (
                                    children: 
                                    [
                                        Row
                                        (
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: 
                                            [
                                                Container
                                                (
                                                    margin: EdgeInsets.all(8),
                                                    child: Text
                                                    (
                                                        "Tombola",
                                                        style: TextStyle
                                                        (
                                                            fontSize: 22,
                                                            fontWeight: FontWeight.w600,
                                                        ),
                                                    ),
                                                ),
                                                
                                                Open_State
                                                (
                                                    isOpen: isOpen,
                                                ),
                                            ],
                                        ),

                                        SizedBox(height: 16),

                                        Text
                                        (
                                            "Participe, tu seras peut-être tiré au sort !",
                                            style: TextStyle
                                            (
                                                fontSize: 16,
                                                color: GREY_DARK,
                                            ),
                                        ),

                                        SizedBox(height: 16),

                                        Tombola_Participation_State
                                        (
                                            canParticipate: isOpen,
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}