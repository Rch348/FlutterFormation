// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:goldencup/data/application_colors.dart';

class Tombola_Card extends StatelessWidget
{
    const Tombola_Card({super.key});
    
    @override
    Widget build(BuildContext context)
    {
        return Card
        (
            margin: EdgeInsets.all(16),
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
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                                
                                Container
                                (
                                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                                    decoration: BoxDecoration
                                    (
                                        color: BLUE_LIGHT,
                                        borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),

                                    child: Text
                                    (
                                        "Ouvert",
                                        style: TextStyle
                                        (
                                            color: BLUE,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                        ),
                                    ),
                                )
                            ],
                        ),

                        SizedBox(height: 24),

                        Text
                        (
                            "Participe, tu seras peut-être tiré au sort !",
                            style: TextStyle
                            (
                                fontSize: 16,
                                color: GREY_DARK,
                            ),
                        ),

                        SizedBox(height: 24),

                        Row
                        (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: 
                            [
                                SizedBox
                                (
                                    width: 140,
                                    height: 140,
                                    child: Image.asset
                                    (
                                        "assets/images/logo.png",
                                    ),
                                ),

                                Column
                                (
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: 
                                    [
                                        TextButton
                                        (
                                            onPressed: () {},
                                            style: ButtonStyle
                                            (
                                                backgroundColor: MaterialStateProperty.all(BLUE_LIGHT),
                                            ),
                                            child: Text
                                            (
                                                "Lots",
                                                style: TextStyle
                                                (
                                                    color: BLACK,
                                                ),
                                            ),
                                        ),
                                        
                                        TextButton
                                        (
                                            onPressed: () {},
                                            style: ButtonStyle
                                            (
                                                backgroundColor: MaterialStateProperty.all(YELLOW),
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
                                )
                            ],
                        )
                    ],
                ),
            ),
        );
    }
}