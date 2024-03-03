import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget
{
    const MenuDrawer({super.key});
    
    @override
    State<MenuDrawer> createState()
    {
        return _MenuDrawerState();
    }
}

class _MenuDrawerState extends State<MenuDrawer>
{
    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            width: 390,
            height: 700,  
            decoration: const BoxDecoration
            (
                color: Colors.white,
                borderRadius: BorderRadius.only
                (
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)
                ),
            ),
            child: ListView
            (
                padding: const EdgeInsets.all(10), 
                children: 
                [
                    Card
                    (
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Padding
                        (
                            padding: const EdgeInsets.all(20.0),
                            child: Row
                            (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                [
                                    Column
                                    (
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children:
                                        [
                                            const Text
                                            (
                                                'Récompense',
                                                style: TextStyle
                                                (
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700
                                                ),
                                            ),
                                            const Text
                                            (
                                                'Tombola',
                                                style: TextStyle
                                                (
                                                    color: Colors.grey,
                                                    fontSize: 20,
                                                ),
                                            ),
                                            const SizedBox
                                            (
                                                height: 20,
                                            ),
                                            Image.asset
                                            (
                                                "assets/images/saucisson.png",
                                                width: 70,
                                            ),
                                        ],
                                    ),
                                    const SizedBox(width: 70),
                                    Expanded
                                    (
                                        child: Column
                                        (
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children:
                                            [
                                                Image.asset
                                                (
                                                    "assets/images/logo.png",
                                                    width: 100,
                                                ),
                                                const SizedBox
                                                (
                                                    height: 20,
                                                ),
                                                FloatingActionButton
                                                (
                                                    onPressed: () {}, 
                                                    backgroundColor: const Color.fromRGBO(250, 215, 63, 1),                           
                                                    child: const Text
                                                    (
                                                        'Récupérer',
                                                        style: TextStyle
                                                        (
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.w800,
                                                            fontSize: 16,
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),               
                    Card
                    (    
                        color: const Color.fromRGBO(255, 255, 255, 1),           
                        child: Padding
                        (
                            padding: const EdgeInsets.all(20.0),
                            child: Row
                            (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: 
                                [
                                    const Column
                                    (
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: 
                                        [
                                            Text
                                            (
                                                'Récompense',
                                                style: TextStyle
                                                (
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                ),
                                            ),
                                            Text
                                            (
                                                'Mi-temps',
                                                style: TextStyle
                                                (
                                                    color: Colors.grey,
                                                    fontSize: 20,
                                                ),
                                            ),
                                            SizedBox
                                            (
                                                height: 60,
                                            ),
                                            Text
                                            (
                                                '50 Pts',
                                                style: TextStyle
                                                (
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 25,
                                                ),
                                            ),
                                        ],
                                    ),
                                    const SizedBox(width: 70),
                            
                                    Expanded
                                    (
                                        child: Column
                                        (
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.stretch,
                                            children: 
                                            [
                                                Image.asset
                                                (
                                                    "assets/images/gc.png",
                                                    width: 80,
                                                ),
                                                const SizedBox
                                                (
                                                    height: 20,
                                                ),
                                                FloatingActionButton
                                                (
                                                    onPressed: () {}, 
                                                    backgroundColor: const Color.fromRGBO(250, 215, 63, 1),                                                                            
                                                    child: const Text
                                                    (
                                                        'Récupérer',
                                                        style: TextStyle
                                                        (
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.w800,
                                                            fontSize: 16,
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),                 
                    ),
                ],
            ),
        );
    }
}