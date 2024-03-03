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
                surfaceTintColor: TRANSPARENT,

                elevation: 8,
                shadowColor: GREY_LIGHT,

                leadingWidth: 130,
                leading: Container
                (
                    margin: EdgeInsets.only(left: 16),
                    alignment: Alignment.centerLeft,
                    child: FittedBox
                    (
                        child: Text
                        (
                            "Julien",
                            style: TextStyle
                            (
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                            ),
                        ),
                    ),
                ),
                
                centerTitle: true,
                title: Row
                (
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: 
                    [
                        Text
                        (
                            "1230",
                            style: TextStyle
                            (
                                fontWeight: FontWeight.w600,
                            ),
                        ),
                        Text
                        (
                            "Pts",
                            style: TextStyle
                            (
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 1.75
                            ),
                        ),
                    ],
                ),
                
                actions:
                [
                    Builder
                    (
                        builder: (context) => IconButton
                        (
                            icon: Container
                            (
                                padding: EdgeInsets.only(right: 16),
                                child: Stack
                                (
                                    alignment: Alignment.topRight,
                                    children: 
                                    [
                                        Image.asset("assets/images/Cadeau.png"),
                                        Container
                                        (
                                            alignment: Alignment.center,
                                            height: 20,
                                            width: 20,

                                            decoration: BoxDecoration
                                            (
                                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                                color: RED,
                                            ),
                                            
                                            child: Text
                                            (
                                                "1",
                                                style: TextStyle
                                                (  
                                                    color: WHITE,
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            ),
                                        )
                                    ],
                                ),
                            ),
                            
                            onPressed: () => Scaffold.of(context).openEndDrawer(),
                            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                    ),
                ],
            ),

            endDrawer: const MenuDrawer(),

            body: widget.selectionView(currentViewIndex),

            bottomNavigationBar: BottomNavigationBar
            (
                fixedColor: BLACK,
                unselectedItemColor: GREY,

                showUnselectedLabels: true,
                currentIndex: currentViewIndex,

                elevation: 1,
                

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
                        icon: Icon(Icons.house, size: 30),
                        label: "Accueil",
                        backgroundColor: WHITE,
                    ),
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.rowing, size: 30),
                        label: "Match",
                        backgroundColor: WHITE,
                    ),
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.emoji_events, size: 30),
                        label: "Ligue",
                        backgroundColor: WHITE,
                    ),
                    BottomNavigationBarItem
                    (
                        icon: Icon(Icons.person, size: 30),
                        label: "Profil",
                        backgroundColor: WHITE,
                    ),
                ],
            ),
        );
    }
}