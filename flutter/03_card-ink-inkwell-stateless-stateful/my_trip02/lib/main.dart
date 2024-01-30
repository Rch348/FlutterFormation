// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyTrip());
}

class MyTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                // centerTitle: true,
                leading: Icon(Icons.home),
                title: Text('MyTrip'),
                actions: [Icon(Icons.more_vert)]),
            body: Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey[100],
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Card = Container (+ Padding + BorderRadius + Shadow)
                      Card(
                          surfaceTintColor: Color.fromRGBO(255, 255, 255, 1),
                          elevation: 2,
                          child: Container(
                            height: 150,
                            child: Stack(fit: StackFit.expand, children: [
                              Image.asset(
                                'assets/images/Montpellier.jpeg',
                                fit: BoxFit.fitWidth,
                              ),
// Column : Pas le + optimisé mais utile si d'autres fonctionnalités à ajouter :
                              // Column(
                              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     Row(
                              //       mainAxisAlignment: MainAxisAlignment.end,
                              //       children: [
                              //         Icon(
                              //           Icons.star_border_outlined,
                              //           color: Colors.white,
                              //         )
                              //       ]
                              //     ),
                              //     Row(
                              //       children: [
                              //         Text('Montpellier',
                              //           style: TextStyle(
                              //             color: Colors.white,
                              //             fontWeight: FontWeight.w700,
                              //             fontSize: 20
                              //           )
                              //         )
                              //       ],
                              //     )
                              //   ],
                              // )
// OU : Container (le + rapide, simple et optimisé) :
                              // Container(
                              //     // padding: EdgeInsets.only(left: 10, right: 20, bottom: 30, top: 40),
                              //     // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                              //     padding: EdgeInsets.all(10),
                              //     alignment: Alignment.topRight,
                              //     child: Icon(
                              //       Icons.star_border,
                              //       size: 40,
                              //       color: Colors.white,
                              //     )),
                              // Container(
                              //     padding: EdgeInsets.all(10),
                              //     alignment: Alignment.bottomLeft,
                              //     child: Text(
                              //       'Montpellier',
                              //       style: TextStyle(
                              //           color: Colors.white, fontSize: 25),
                              //     ))
// OU 
                              // Container(
                              //   padding: EdgeInsets.all(10),
                              //   child: Column(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       Row(
                              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //         children: [
                              //           Icon(Icons.favorite, size: 40, color: Colors.white,),
                              //           Icon(Icons.star, size: 40, color: Colors.white,)
                              //         ],
                              //       ),
                              //       Row(
                              //         mainAxisAlignment: MainAxisAlignment.start,
                              //         children: [
                              //           Text(
                              //             'Montpellier',
                              //             style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 25
                              //             ),
                              //           )
                              //         ],
                              //       )
                              //     ],
                              //   ),
                              // )
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.star_border, size: 40, color: Colors.white)
                                        ],
                                      )
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Montpellier',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25
                                          )
                                        )
                                      ],
                                    )
                                  ]
                                )
                              )
                            ]),
                          )),
                      Card(
                          elevation: 5,
                          child: Container(
                              height: 150,
                              child: Stack(fit: StackFit.expand, children: [
                                Image.asset('assets/images/Peyrou.jpeg',
                                    fit: BoxFit.cover),
                                // Column(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Row(
                                //       mainAxisAlignment: MainAxisAlignment.end,
                                //       children: [
                                //         Icon(
                                //           Icons.star_border_outlined,
                                //           color: Colors.white
                                //         )
                                //       ]
                                //     ),
                                //     Row(
                                //       children: [
                                //         Text('Peyrou',
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontWeight: FontWeight.w700,
                                //             fontSize: 20
                                //           )
                                //         )
                                //       ],
                                //     )
                                //   ],
                                // )
                                // Container(
                                //     // padding: EdgeInsets.only(left: 10, right: 20, bottom: 30, top: 40),
                                //     // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                //     padding: EdgeInsets.all(10),
                                //     alignment: Alignment.topRight,
                                //     child: Icon(
                                //       Icons.star_border,
                                //       size: 40,
                                //       color: Colors.white,
                                //     )),
                                // Container(
                                //     padding: EdgeInsets.all(10),
                                //     alignment: Alignment.bottomLeft,
                                //     child: Text(
                                //       'Peyrou',
                                //       style: TextStyle(
                                //           color: Colors.white, fontSize: 25),
                                //     ))
                              ]))),
                      Card(
                          elevation: 5,
                          child: Container(
                              height: 150,
                              child: Stack(fit: StackFit.expand, children: [
                                Image.asset('assets/images/Travers.png',
                                    fit: BoxFit.cover),
                                // Column(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Row(
                                //       mainAxisAlignment: MainAxisAlignment.end,
                                //       children: [
                                //         Icon(
                                //           Icons.star_border_outlined,
                                //           color: Colors.white
                                //         )
                                //       ]
                                //     ),
                                //     Row(
                                //       children: [
                                //         Text(
                                //           'Le Petit Travers',
                                //           style: TextStyle(
                                //             color: Colors.white,
                                //             fontWeight: FontWeight.w700,
                                //             fontSize: 20
                                //           )
                                //         )
                                //       ],
                                //     )
                                //   ],
                                // )
                                // Container(
                                //     // padding: EdgeInsets.only(left: 10, right: 20, bottom: 30, top: 40),
                                //     // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                //     padding: EdgeInsets.all(10),
                                //     alignment: Alignment.topRight,
                                //     child: Icon(
                                //       Icons.star_border,
                                //       size: 40,
                                //       color: Colors.white,
                                //     )),
                                // Container(
                                //     padding: EdgeInsets.all(10),
                                //     alignment: Alignment.bottomLeft,
                                //     child: Text(
                                //       'Le Petit Travers',
                                //       style: TextStyle(
                                //           color: Colors.white, fontSize: 25),
                                //     ))
                              ]))),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.3),
                                    spreadRadius: 10,
                                    blurRadius: 10
                                  )
                                ],
                                // shape: BoxShape.circle, 
                                color: Colors.white,
                              ),
                              
                              height: 150,
                              child: Image.asset(
                                'assets/images/Matrix.jpeg', fit: BoxFit.cover,
                            
                              ),
                              
                          )
                    ]))));
  }
}
