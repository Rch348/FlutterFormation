// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

// import 'dart:html';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:factures_pdf/models/invoice.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<Uint8List> makePdf(Invoice invoice) async 
{
   final pdf = Document();
   final image = MemoryImage((await rootBundle.load('assets/technical_logo.png')).buffer.asUint8List());
   pdf.addPage
   (
      Page
      (
         build: (context) 
         {
            return Column
            (
               children: 
               [
                  Container
                  (
                     child: Row
                     (
                        children:
                        [  
                           // Compartiment logo
                           Expanded
                           (
                              child: Column                           
                              (
                                 children: 
                                 [
                                    SizedBox
                                    (
                                       height: 25
                                    ),
                                    SizedBox
                                    (
                                       child: Image
                                       (
                                          image
                                       ),
                                       width: 120,
                                    ),
                                 ]
                              ),
                              flex: 2,
                           ),
                           SizedBox
                           (
                              width: 20
                           ),
                           // Compartiment coordonnées prestataire et client
                           Expanded
                           (
                              child: Column
                              (  
                                 children:
                                 [
                                    // Coordonnées prestataire
                                    Row
                                    (
                                       children:
                                       [
                                          Column
                                          (
                                             children: 
                                             [
                                                Text
                                                (
                                                   'CAMILLE COSTE PHOTOGRAPHIE',
                                                   style: TextStyle
                                                   (
                                                      fontSize: 12,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                                SizedBox
                                                (
                                                   height: 3
                                                ),
                                                Text
                                                (
                                                   '06.75.86.94.48',
                                                   style: TextStyle
                                                   (
                                                      fontSize: 8.5,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                                SizedBox
                                                (
                                                   height: 3
                                                ),
                                                Text
                                                (
                                                   'camillecostephotographie@gmail.com',
                                                   style: TextStyle
                                                   (
                                                      fontSize: 8.5,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                                SizedBox
                                                (
                                                   height: 3
                                                ),
                                                Text
                                                (
                                                   'camillecostephotographie.com',
                                                   style: TextStyle
                                                   (
                                                      fontSize: 8.5,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                             ],
                                             crossAxisAlignment: CrossAxisAlignment.start,
                                          ),
                                       ],
                                       mainAxisAlignment: MainAxisAlignment.start,
                                    ),
                                    // Coordonnées client
                                    Row
                                    (
                                       children: 
                                       [
                                          Column
                                          (
                                             children: 
                                             [
                                                Text
                                                (
                                                   'Mairie',
                                                   style: TextStyle
                                                   (
                                                      color: PdfColors.grey500,
                                                      fontSize: 8.5,
                                                      fontStyle: FontStyle.italic,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                                SizedBox
                                                (
                                                   height: 3
                                                ),
                                                Text
                                                (
                                                   '30200 Saint Laurent de Carnols',
                                                   style: TextStyle
                                                   (
                                                      color: PdfColors.grey500,
                                                      fontSize: 8.5,
                                                      fontStyle: FontStyle.italic,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                                SizedBox
                                                (
                                                   height: 3
                                                ),
                                                Text
                                                (
                                                   '04 66 82 78 39',
                                                   style: TextStyle
                                                   (
                                                      color: PdfColors.grey500,
                                                      fontSize: 8.5,
                                                      fontStyle: FontStyle.italic,
                                                      letterSpacing: 0.3
                                                   ),
                                                ),
                                             ],
                                             crossAxisAlignment: CrossAxisAlignment.end,
                                          )
                                       ],
                                       mainAxisAlignment: MainAxisAlignment.end,
                                    ),
                                 ],
                                 crossAxisAlignment: CrossAxisAlignment.stretch,
                              ),
                              flex: 5,
                           ),
                        ]
                     ),
                     width: 425,
                  ),
                  SizedBox
                  (
                     height: 18,
                  ),
                  Container
                  (
                     // child: Padding
                     // (
                     //    // padding: EdgeInsets.all(20),
                     //    // padding: EdgeInsetsDirectional.symmetric(horizontal: 90, vertical: 20),
                     //    // padding: EdgeInsets.only(top: 12, bottom: 18, left: 80),                               
                     child: Column
                     (
                        children: 
                        [
                           Row
                           (
                              children: 
                              [
                                 Text
                                 (
                                    'FACTURE N° D24-006',
                                    style: TextStyle
                                    (
                                       fontSize: 21,
                                       fontWeight: FontWeight.bold,
                                       letterSpacing: 0.3
                                    ),
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                           ),
                           SizedBox
                           (
                              height: 2
                           ),
                           Row
                           (
                              children: 
                              [
                                 RichText
                                 (
                                    text: TextSpan
                                    (
                                       children:
                                       [
                                          TextSpan
                                          (
                                             style: TextStyle
                                             (
                                                fontWeight: FontWeight.bold,
                                             ),
                                             text: '18/03/2024'
                                          )
                                       ],
                                       style: TextStyle
                                       (
                                          fontSize: 11,
                                          letterSpacing: 0.3
                                       ),
                                       text: 'Établi le : ',
                                    )
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                           ),
                           SizedBox
                           (
                              height: 4
                           ),
                           Row
                           (
                              children:
                              [
                                 RichText
                                 (
                                    text: TextSpan
                                    (
                                       children:
                                       [
                                          TextSpan
                                          (
                                             style: TextStyle
                                             (
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.1
                                             ),
                                             text: 'Prise de vue pour la mairie de Saint Laurent de Carnols'
                                          )
                                       ],
                                       style: TextStyle
                                       (
                                          fontSize: 11,
                                          letterSpacing: 0.3,
                                       ),
                                       text: 'Objet : ',
                                    )
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                           ),
                           SizedBox
                           (
                              height: 4
                           ),
                           Row
                           (
                              children:
                              [
                                 Text
                                 (
                                    'Devis associé : D23-008',
                                    style: TextStyle
                                    (
                                       fontSize: 9,
                                       letterSpacing: 0.3
                                    ),
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                           ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                     ),
                     decoration: BoxDecoration
                     (
                        color: PdfColors.orange100,     
                     ),
                     height: 100,
                     width: 425,
                  ),
                  SizedBox
                  (
                     height: 18
                  ),
                  Container
                  (
                     child: Table
                     (
                        border: TableBorder.all(),
                        children: 
                        [
                           TableRow
                           (
                              children:
                              [
                                 Container
                                 (
                                    alignment: Alignment.centerLeft,
                                    child: Text
                                    (
                                       'Intitulé de la prestation',
                                       // style: Theme.of(context).header4,
                                       style: TextStyle
                                       (
                                          fontSize: 8,
                                          letterSpacing: 0.3
                                       ),
                                       // textAlign: TextAlign.left,
                                    ),
                                    padding: EdgeInsets.only(top: 4, bottom: 4, left: 3),
                                 ),
                                 Container
                                 (
                                    alignment: Alignment.center,
                                    child: Text
                                    (
                                       'Prix unitaire',
                                       // style: Theme.of(context).header4,
                                       style: TextStyle
                                       (
                                          fontSize: 8,
                                          letterSpacing: 0.3
                                       ),
                                       textAlign: TextAlign.center,
                                    ),
                                    padding: EdgeInsets.all(4),
                                 ),
                                 Container
                                 (
                                    alignment: Alignment.center,
                                    child: Text
                                    (
                                       'Quantité',
                                       // style: Theme.of(context).header4,
                                       style: TextStyle
                                       (
                                          fontSize: 8,
                                          // letterSpacing: 0.3
                                       ),
                                       textAlign: TextAlign.center,
                                    ),
                                    padding: EdgeInsets.all(4),
                                 ),
                                 Container
                                 (
                                    alignment: Alignment.center,
                                    child: Text
                                    (
                                       'Prix H.T.',
                                       style: TextStyle
                                       (
                                          fontSize: 8,
                                          letterSpacing: 0.3
                                       ),
                                       textAlign: TextAlign.center,
                                    ),
                                    padding: EdgeInsets.all(4)
                                 ),
                              ],
                              decoration: BoxDecoration
                              (
                                 color: PdfColors.orange100,
                              ),
                           ),
                           ...invoice.items.map
                           (
                              (e) => TableRow
                              (
                                 children: 
                                 [
                                    Expanded
                                    (
                                       child: Padding
                                       (
                                          child: Text
                                          (
                                             e.description,
                                             style: TextStyle
                                             (
                                                fontSize: 8,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                                       ),
                                       flex: 5,
                                    ),
                                    Expanded
                                    (
                                       child: PaddedText
                                       (
                                          "${(e.cost).toStringAsFixed(2)} euros",
                                          align: TextAlign.center,
                                       ),
                                       // child: Padding
                                       // (
                                       //    padding: EdgeInsets.all(8),
                                       //    child: Text
                                       //    (
                                       //       '${e.cost} euros',

                                       //    ),
                                       // ),
                                       flex: 2,
                                    ),
                                    Expanded
                                    (
                                       child: PaddedText
                                       (
                                          '${e.quantity}',
                                          align: TextAlign.center
                                       ),
                                       // child: Padding
                                       // (
                                       //    padding: EdgeInsets.all(8),
                                       //    child: Text
                                       //    (
                                       //       '${e.quantity}'
                                       //    )
                                       // )
                                       flex: 1,
                                    ),
                                    Expanded
                                    (
                                       child: PaddedText
                                       (
                                          "${(e.cost * e.quantity).toStringAsFixed(2)} euros",
                                          align: TextAlign.center
                                       ),
                                       // child: Padding
                                       // (
                                       //    padding: EdgeInsets.all(8),
                                       //    child: Text
                                       //    (
                                       //       '${e.cost} euros',
                                       //    ),
                                       // ),
                                       flex: 2,
                                    ),
                                 ],
                              ),
                           ),
                           // TableRow
                           // (
                           //    children: 
                           //    [
                           //       PaddedText
                           //       (
                           //          'TAX', 
                           //          align: TextAlign.left
                           //       ),
                           //       PaddedText
                           //       (
                           //          '${(invoice.totalCost() * 0.1).toStringAsFixed(2)} €'
                           //       ),
                           //    ],
                           // ),
                        ],
                     ),
                     width: 425,
                  ),
                  Container
                  (
                     child: Table
                     (
                        border: TableBorder.all(),
                        children: 
                        [
                           TableRow
                           (
                              children: 
                              [
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       child: RichText
                                       (
                                          text: TextSpan
                                          (
                                             children:
                                             [
                                                TextSpan
                                                (
                                                   style: TextStyle
                                                   (
                                                      fontSize: 7.5,
                                                      fontStyle: FontStyle.italic,
                                                      fontWeight: FontWeight.normal
                                                   ),
                                                   text: 'TVA non-applicable, art. 293 B du CGI'
                                                )
                                             ],
                                             style: TextStyle
                                             (
                                                fontSize: 8.5,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.3
                                             ),
                                             text: 'TOTAL H.T.                 ',
                                             // textAlign: TextAlign.left
                                          ),
                                       ),
                                       padding: EdgeInsets.all(3),
                                    ),
                                    flex: 8
                                 ),
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       child: Text
                                       (
                                          '${(invoice.totalCost() * 1.1).toStringAsFixed(2)} euros',
                                          style: TextStyle
                                          (
                                             fontSize: 9,
                                             fontWeight: FontWeight.bold,
                                             letterSpacing: 0.3
                                          ),
                                          textAlign: TextAlign.center
                                       ),
                                       padding: EdgeInsets.all(3),
                                    ),
                                    flex: 2
                                 ),
                              ],
                           ),
                        ],
                     ),
                     decoration: BoxDecoration
                     (
                        color: PdfColors.orange100,
                     ),
                     width: 425,
                  ),
                  Container
                  (
                     child: Table
                     (
                        border: TableBorder.all(),
                        children: 
                        [
                           TableRow
                           (
                              children: 
                              [
                                 Expanded
                                 (
                                    child: Container
                                    (
                                       decoration: BoxDecoration
                                       (
                                          color: PdfColors.orange100,
                                       ),
                                       child: Padding
                                       (
                                          padding: EdgeInsets.all(3),
                                          child: Text
                                          (
                                             'Acompte',
                                             style: TextStyle
                                             (
                                                fontSize: 8.5,
                                                letterSpacing: 0.3
                                             ),
                                          ),
                                       ),
                                    ),
                                    flex: 7
                                 ),
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       padding: EdgeInsets.all(3),
                                       child: Text
                                       (
                                          '30 %',
                                          style: TextStyle
                                          (
                                             fontSize: 8.5,
                                             letterSpacing: 0.3
                                          ),
                                          textAlign: TextAlign.center
                                       ),
                                    ),
                                    flex: 1
                                 ),
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       padding: EdgeInsets.all(3),
                                       child: Text
                                       (
                                          '${((invoice.totalCost() * 1.1) * (30 /100)).toStringAsFixed(2)} euros',
                                          style: TextStyle
                                          (
                                             fontSize: 8.5,
                                             letterSpacing: 0.3
                                          ),
                                          textAlign: TextAlign.center
                                       ),
                                    ),
                                    flex: 2
                                 ),
                              ]
                           )
                        ]
                     ),
                     decoration: BoxDecoration
                     (
                        color: PdfColors.orange100,
                     ),
                     width: 425,
                  ),
                  Container
                  (
                     child: Table
                     (
                        border: TableBorder.all(),
                        children: 
                        [
                           TableRow
                           (
                              children: 
                              [
                                 Expanded
                                 (
                                    child: Container
                                    (
                                       decoration: BoxDecoration
                                       (
                                          color: PdfColors.orange100,
                                       ),
                                       child: Padding
                                       (
                                          padding: EdgeInsets.all(3),
                                          child: Text
                                          (
                                             'TOTAL H.T. restant dû',
                                             style: TextStyle
                                             (
                                                fontSize: 9.5,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.3
                                             ),
                                          ),
                                       ),
                                    ),
                                    flex: 8
                                 ),
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       padding: EdgeInsets.all(3),
                                       child: Text
                                       (
                                          '${((invoice.totalCost() * 1.1) - ((invoice.totalCost() * 1.1)) * (30 /100)).toStringAsFixed(2)} euros',
                                          style: TextStyle
                                          (
                                             fontSize: 9.5,
                                             fontWeight: FontWeight.bold,
                                             letterSpacing: 0.3
                                          ),
                                          textAlign: TextAlign.center
                                       ),
                                    ),
                                    flex: 2
                                 ),
                              ]
                           )
                        ]
                     ),
                     decoration: BoxDecoration
                     (
                        color: PdfColors.orange100,
                     ),
                     width: 425,
                  ),
                  SizedBox
                  (
                     height: 34 
                  ),
                  Container
                  (
                     child: Text
                     (
                        'Remarques :',
                        style: TextStyle
                        (
                           decoration: TextDecoration.underline,
                           fontSize: 8.5,
                        )
                     ),
                     decoration: BoxDecoration
                     (
                        border: Border.all()
                     ),
                     padding: EdgeInsets.symmetric(horizontal: 3, vertical: 6),
                     height: 55,
                     width: 334,
                  ),
                  SizedBox
                  (
                     height: 34
                  ),
                  Container
                  (
                     alignment: Alignment.topCenter,
                     child: Table
                     (
                        border: TableBorder.all(color: PdfColors.black),
                        children: 
                        [
                           TableRow
                           (
                              children:
                              [
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       child: Text
                                       (
                                          'Conditions de règlement',
                                          style: TextStyle
                                          (
                                             fontSize: 9,
                                             letterSpacing: 0.3
                                          ),
                                       ),
                                       padding: EdgeInsets.all(3),
                                    ),
                                    flex: 3,
                                 ),
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       child: Text
                                       (
                                          'Pénalités en cas de retard de paiement',
                                          style: TextStyle
                                          (
                                             fontSize: 9,
                                             letterSpacing: 0.3
                                          ),
                                       ),
                                       padding: EdgeInsets.all(3)
                                    ),
                                    flex: 4,
                                 )
                              ],
                              decoration: BoxDecoration
                              (
                                 color: PdfColors.orange100,
                              )
                           ),
                           TableRow
                           (
                              children:
                              [
                                 Column
                                 (
                                    children:
                                    [
                                       Padding
                                       (
                                          child: Text
                                          (
                                             '- Paiement d\'un acompte au plus tard 15 jours avant la prestation',
                                             style: TextStyle
                                             (
                                                fontSize: 8.5,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 9)
                                       ),
                                       Padding
                                       (
                                          child: Text
                                          (
                                             '- Paiement du total dû au plus tard le jour de la prestation',
                                             style: TextStyle
                                             (
                                                fontSize: 8.5,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 9)
                                       ),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center
                                 ),
                                 Column
                                 (
                                    children:
                                    [
                                       Padding
                                       (
                                          child: Text
                                          (
                                             'Trois fois le taux d\'intérêt légal en vigueur en France. Frais de recouvrement en cas de retard de paiement : 40 euros.',
                                             style: TextStyle
                                             (
                                                fontSize: 8.5,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.center
                                          ),
                                          padding: EdgeInsets.symmetric(horizontal: 3, vertical: 24)
                                       ),
                                    ],
                                    mainAxisAlignment: MainAxisAlignment.center
                                 )
                              ]
                           )
                        ]
                     ),
                     width: 334
                  ),
                  SizedBox
                  (
                     height: 45,
                  ),
                  Container
                  (
                     child: Column
                     (
                        children:
                        [
                           Row
                           (
                              children:
                              [
                                 RichText
                                 (
                                    text: TextSpan
                                    (
                                       children:
                                       [
                                          TextSpan
                                          (
                                             style: TextStyle
                                             (
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.normal
                                             ),
                                             text: '- 3 Rue du Moulin à huile 30200 Saint Laurent de Carnols'
                                          ),
                                       ],
                                       style: TextStyle
                                       (
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.3
                                       ),
                                       text: 'Camille Coste Photographie ',
                                    ),
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center
                           ),
                           // Row
                           // (
                           //    children:
                           //    [
                           //       Text
                           //       (
                           //          'camillecostephotographie@gmail.com',
                           //          style: TextStyle
                           //          (
                           //             color: PdfColors.blue700,
                           //             decoration: TextDecoration.underline,
                           //             fontSize: 9,
                           //             letterSpacing: 0.3
                           //          )
                           //       )
                           //    ],
                           //    mainAxisAlignment: MainAxisAlignment.center
                           // ),
                           Row
                           (
                              children:
                              [
                                 Text
                                 (
                                    'camillecostephotographie.com',
                                    style: TextStyle
                                    (
                                       fontSize: 8,
                                       letterSpacing: 0.3
                                    )
                                 )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center
                           ),
                           Row
                           (
                              children:
                              [
                                 Text
                                 (
                                    'SIRET : 910 464 734 000 11',
                                    style: TextStyle
                                    (
                                       fontSize: 8,
                                       letterSpacing: 0.3
                                    )
                                 )
                              ],
                              mainAxisAlignment: MainAxisAlignment.center
                           ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly
                     ),
                     decoration: BoxDecoration
                     (
                        color: PdfColors.orange100
                     ),
                     height: 67,
                     width: 475
                  )
                  // Text
                  // (
                  //    "Please forward the below slip to your accounts payable department."
                  // ),
                  // Divider
                  // (
                  //    height: 1,
                  //    borderStyle: BorderStyle.dashed,
                  // ),
                  // Container
                  // (
                  //    height: 50
                  // ),
                  // Table
                  // (
                  //    border: TableBorder.all(color: PdfColors.black),
                  //    children: 
                  //    [
                  //       TableRow
                  //       (
                  //          children: 
                  //          [
                  //             PaddedText
                  //             (
                  //                'Account Number'
                  //             ),
                  //             PaddedText
                  //             (
                  //                '1234 1234',
                  //             )
                  //          ],
                  //       ),
                  //       TableRow
                  //       (
                  //          children: 
                  //          [
                  //             PaddedText
                  //             (
                  //                'Account Name',
                  //             ),
                  //             PaddedText
                  //             (
                  //                'ADAM FAMILY TRUST',
                  //             )
                  //          ],
                  //       ),
                  //       TableRow
                  //       (
                  //          children: 
                  //          [
                  //             PaddedText
                  //             (
                  //                'Total Amount to be Paid',
                  //             ),
                  //             PaddedText
                  //             (
                  //                '${(invoice.totalCost() * 1.1).toStringAsFixed(2)} €'
                  //             )
                  //          ],
                  //       )
                  //    ],
                  // ),
                  // Padding
                  // (
                  //    padding: EdgeInsets.all(30),
                  //    child: Text
                  //    (
                  //       'Please ensure all cheques are payable to the ADAM FAMILY TRUST.',
                  //       style: Theme.of(context).header3.copyWith
                  //       (
                  //          fontStyle: FontStyle.italic,
                  //       ),
                  //       textAlign: TextAlign.center,
                  //    ),
                  // )
               ],
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.start,
            );
         },
      ),
   );
   return pdf.save();
}

Widget PaddedText
(
   final String text, 
   {
      final TextAlign align = TextAlign.left,
   }
) => Padding
(
   padding: EdgeInsets.all(4),
   child: Text
   (
      text,
      style: TextStyle
      (
         fontSize: 8,
         letterSpacing: 0.3
      ),
      textAlign: align,
   ),
);