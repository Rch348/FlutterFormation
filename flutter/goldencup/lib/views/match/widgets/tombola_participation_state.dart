// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:goldencup/data/application_colors.dart';

class Tombola_Participation_State extends StatelessWidget
{
    final bool canParticipate;

    const Tombola_Participation_State({
        super.key,
        this.canParticipate = true,
    });
    
    @override
    Widget build(BuildContext context)
    {
        return Row
        (
            mainAxisAlignment: canParticipate ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
            children: 
            [
                SizedBox
                (
                    width: 140,
                    height: 140,
                    child: Image.asset
                    (
                        "assets/images/logo.png",
                        fit: BoxFit.fill,
                    ),
                ),

                if (canParticipate)
                    SizedBox(width: 24),

                if (canParticipate)
                    Expanded
                    (
                        child: Column
                        (
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:
                            [
                                TextButton
                                (
                                    onPressed: () {},
                                    style: ButtonStyle
                                    (
                                        backgroundColor: MaterialStateProperty.all(BLUE_LIGHT),
                                        elevation: MaterialStateProperty.all(8),
                                        shadowColor: MaterialStateProperty.all(GREY_LIGHT),
                                    ),
                                    child: Text
                                    (
                                        "Lots",
                                        style: TextStyle
                                        (
                                            color: BLACK,
                                            fontWeight: FontWeight.w300,
                                        ),
                                    ),
                                ),
                                
                                TextButton
                                (
                                    onPressed: () {},
                                    style: ButtonStyle
                                    (
                                        backgroundColor: MaterialStateProperty.all(YELLOW),
                                        elevation: MaterialStateProperty.all(8),
                                        shadowColor: MaterialStateProperty.all(GREY_LIGHT),
                                    ),
                                    child: Text
                                    (
                                        "Participer",
                                        style: TextStyle
                                        (
                                            color: BLACK,
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
            ],
        );
    }
}