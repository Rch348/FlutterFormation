// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:flutter/material.dart';
import 'package:goldencup/data/application_colors.dart';
import 'package:goldencup/views/home/home_view.dart';
import 'package:goldencup/views/ligue/ligue_view.dart';
import 'package:goldencup/views/match/match_view.dart';
import 'package:goldencup/views/menu_drawer.dart';
import 'package:goldencup/views/profil/profil_view.dart';

class Menu_View extends StatefulWidget
{
    const Menu_View({super.key});

    @override
    State<Menu_View> createState() => _Menu_ViewState();

    Widget selectionView(int index)
    {
        if (index == 0)
            return const Home_View();
        else if (index == 1)
            return const Match_View();
        else if (index == 2)
            return const Ligue_View();
        else // (index == 3)
            return const Profil_View();
    }
}

class _Menu_ViewState extends State<Menu_View> 
{
    int currentViewIndex = 1;

    @override
    Widget build(BuildContext context)
    {
        return Scaffold
        (
            appBar: AppBar
            (
                backgroundColor: YELLOW,

                leadingWidth: 130,
                leading: Container
                (
                    margin: EdgeInsets.all(8),
                    alignment: Alignment.center,
                    child: FittedBox
                    (
                        child: Text
                        (
                            "Julien",
                            style: TextStyle
                            (
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                            ),
                        ),
                    ),
                ),
                
                centerTitle: true,
                title: Text("1230 Pts"),
            ),

            endDrawer: MenuDrawer(),

            body: widget.selectionView(currentViewIndex),

            bottomNavigationBar: BottomNavigationBar
            (
                fixedColor: BLACK,
                unselectedItemColor: GREY,
                showUnselectedLabels: true,
                currentIndex: currentViewIndex,
                onTap: (int index)
                {
                    setState(() 
                    {
                        currentViewIndex = index;
                    });
                },
                items: 
                [
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.house,),
                        label: "Accueil",
                    ),
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.rowing,),
                        label: "Match",
                    ),
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.emoji_events,),
                        label: "Ligue",
                    ),
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.person,),
                        label: "Profil",
                    ),
                ],
            ),
        );
    }
}