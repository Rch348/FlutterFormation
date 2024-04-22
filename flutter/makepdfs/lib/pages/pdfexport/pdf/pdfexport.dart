// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

// import 'dart:html';
import 'package:intl/intl.dart';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:makepdfs/models/invoice.dart';
import 'package:makepdfs/pages/invoices.dart';
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
                           // SizedBox
                           // (
                           //    width: 20
                           // ),
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
                                                // Nom du client
                                                Text
                                                (
                                                   'test',
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
                                                // Adresse du client
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
                                                // Numéro du client
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
                                                SizedBox
                                                (
                                                   height: 3
                                                ),
                                                // Supplément d'information du client
                                                Text
                                                (
                                                   '',
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
                                    'DEVIS N° D23-008',
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
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.3
                                             ),
                                             text: DateFormat('d/M/y')
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
                                 // SizedBox
                                 // (
                                 //    width: 34
                                 // ),
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
                                                fontSize: 11,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 0.3
                                             ),
                                             text: '30 jours',
                                          )
                                       ],
                                       style: TextStyle
                                       (
                                          fontSize: 11,
                                          letterSpacing: 0.3
                                       ),
                                       text: 'Valable : ',
                                    ),
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                             ),
                                             text: 'Prise de vue pour la mairie de Saint Laurent de Carnols'
                                          )
                                       ],
                                       style: TextStyle
                                       (
                                          fontSize: 11,
                                          letterSpacing: 0.3
                                       ),
                                       text: 'Objet : ',
                                    )
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
                        border: TableBorder.all(color: PdfColors.black),
                        children: 
                        [
                           TableRow
                           (
                              children:
                              [
                                 Container
                                 (
                                    alignment: Alignment.centerLeft,
                                    child: Padding
                                    (
                                       child: Text
                                       (
                                          'Description de la prestation',
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
                                    decoration: BoxDecoration
                                    (
                                       color: PdfColors.orange100,
                                    ),
                                 ),
                                 Container
                                 (
                                    alignment: Alignment.center,
                                    child: Padding
                                    (
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
                                    decoration: BoxDecoration
                                    (
                                       color: PdfColors.orange100,
                                    ),
                                 ),
                                 Container
                                 (
                                    alignment: Alignment.center,
                                    child: Padding
                                    (
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
                                    decoration: BoxDecoration
                                    (
                                       color: PdfColors.orange100,
                                    ),
                                 ),
                                 Container
                                 (
                                    alignment: Alignment.center,
                                    child: Padding
                                    (
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
                                 ),
                              ],
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
                                          'TOTAL',
                                          style: TextStyle
                                          (
                                             fontSize: 9,
                                             fontWeight: FontWeight.bold,
                                             letterSpacing: 0.3
                                          ),
                                          textAlign: TextAlign.left
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
                              decoration: BoxDecoration
                              (
                                 color: PdfColors.orange100,
                              ),
                           ),
                        ]
                     ),
                     width: 425,
                  ),
                  Padding
                  (
                     child: Row
                     (
                        children:
                        [
                           Text
                           (
                              "TVA non-applicable, art. 293 B du CGI",
                              style: TextStyle
                              (
                                 fontSize: 7.5,
                                 fontStyle: FontStyle.italic,
                                 letterSpacing: 0.3
                              ),
                           ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.end,
                     ),
                     padding: EdgeInsets.only(top: 1.9, right: 31),
                  ),
                  SizedBox
                  (
                     height: 18
                  ),
                  Container
                  (
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
                                          '342 euros',
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
                     width: 425,
                  ),
                  SizedBox
                  (
                     height: 18
                  ),
                  Container
                  (
                     child: Column
                     (
                        children:
                        [
                           Text
                           (
                              'Coordonnées bancaires :',
                              style: TextStyle
                              (
                                 decoration: TextDecoration.underline,
                                 fontSize: 9,
                                 fontStyle: FontStyle.italic,
                                 fontWeight: FontWeight.bold,
                                 letterSpacing: 0.3
                              )
                           ),
                           SizedBox
                           (
                              height: 3
                           ),
                           RichText
                           (
                              text: TextSpan
                              (
                                 children:
                                 [
                                    TextSpan
                                    (
                                       text: 'FR76 1348 5008 0008 0106 8154 401',
                                       style: TextStyle
                                       (
                                          fontWeight: FontWeight.normal,
                                       )
                                    )
                                 ],
                                 style: TextStyle
                                 (
                                    fontSize: 8.3,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.4
                                 ),
                                 text: 'IBAN :                  '
                              )
                           ),
                           SizedBox
                           (
                              height: 3
                           ),
                           RichText
                           (
                              text: TextSpan
                              (
                                 children:
                                 [
                                    TextSpan
                                    (
                                       text: 'CEPAFRPP348',
                                       style: TextStyle
                                       (
                                          fontWeight: FontWeight.normal
                                       )
                                    )
                                 ],
                                 style: TextStyle
                                 (
                                    fontSize: 8.3,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.3
                                 ),
                                 text: 'BIC (SWIFT) :       '
                              )
                           ),
                           SizedBox
                           (
                              height: 3
                           ),
                           RichText
                           (
                              text: TextSpan
                              (
                                 children:
                                 [
                                    TextSpan
                                    (
                                       text: 'Caisse d\'Epargne Languedoc Roussillon',
                                       style: TextStyle
                                       (
                                          fontWeight: FontWeight.normal
                                       )
                                    )
                                 ],
                                 style: TextStyle
                                 (
                                    fontSize: 8.3,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.3
                                 ),
                                 text: 'DOMICILIATION : '
                              )
                           ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween
                     ),
                     width: 334
                  ),
                  SizedBox
                  (
                     height: 18
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
                                          'Le devis inclut',
                                          style: TextStyle
                                          (
                                             fontSize: 9,
                                             letterSpacing: 0.3
                                          ),
                                       ),
                                       padding: EdgeInsets.all(3),
                                    ),
                                    flex: 2,
                                 ),
                                 Expanded
                                 (
                                    child: Padding
                                    (
                                       child: Text
                                       (
                                          'Bon de commande',
                                          style: TextStyle
                                          (
                                             fontSize: 9,
                                             letterSpacing: 0.3
                                          ),
                                       ),
                                       padding: EdgeInsets.all(3)
                                    ),
                                    flex: 3,
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
                                       // SizedBox
                                       // (
                                       //    height: 10
                                       // ),
                                       Padding
                                       (
                                          child: Text
                                          (
                                             '- Déplacements',
                                             style: TextStyle
                                             (
                                                fontSize: 8,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.only(top: 18, left: 3)
                                       ),
                                       // SizedBox
                                       // (
                                       //    height: 10
                                       // ),
                                       Padding
                                       (
                                          child: Text
                                          (
                                             '- Travail de post-production',
                                             style: TextStyle
                                             (
                                                fontSize: 8,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.only(top: 18, left: 3)
                                       ),
                                       // SizedBox
                                       // (
                                       //    height: 10
                                       // ),
                                       Padding
                                       (
                                          child: Text
                                          (
                                             '- Galerie privée en ligne',
                                             style: TextStyle
                                             (
                                                fontSize: 8,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.only(top: 18, left: 3)
                                       ),
                                       // SizedBox
                                       // (
                                       //    height: 10
                                       // ),
                                    ],
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                 ),
                                 Column
                                 (
                                    children:
                                    [
                                       // SizedBox
                                       // (
                                       //    height: 10
                                       // ),
                                       Padding
                                       (
                                          child: Text
                                          (
                                             'Pour valider votre commande, merci de me retourner par e-mail ou par courrier un exemplaire du présent devis daté et signé, ainsi que le versement d\'un acompte de 30%, soit 342 euros. La date de la prestation sera réservée dès la réception du paiement. Le restant dû devra être réglé avant la livraison des photos.',
                                             style: TextStyle
                                             (
                                                fontSize: 8,
                                                letterSpacing: 0.3
                                             ),
                                             textAlign: TextAlign.left
                                          ),
                                          padding: EdgeInsets.only(top: 18, bottom: 18, left: 3)
                                       ),
                                       SizedBox
                                       (
                                          // height: 10
                                       ),
                                    ]
                                 )
                              ]
                           )
                        ]
                     ),
                     width: 334
                  ),
                  SizedBox
                  (
                     height: 18,
                  ),
                  Container
                  (
                     alignment: Alignment.topCenter,
                     child: Row
                     (
                        children:
                        [
                           Column
                           (
                              children:
                              [
                                 Text
                                 (
                                    'Fait à :',
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
                                    'Le :',
                                    style: TextStyle
                                    (
                                       fontSize: 8.5,
                                       letterSpacing: 0.3
                                    ),
                                 ),
                                 SizedBox
                                 (
                                    height: 12,
                                 ),
                                 Text
                                 (
                                    'Signature et mention "bon pour accord" :',
                                    style: TextStyle
                                    (
                                       fontSize: 8.5,
                                       letterSpacing: 0.3
                                    ),
                                 )
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start
                           ),
                           Column
                           (
                              children:
                              [
                                 Container
                                 (
                                    decoration: BoxDecoration
                                    (
                                       border: Border.all
                                       (
                                          color: PdfColors.black,
                                       )
                                    ),
                                    height: 55,
                                    width: 145
                                 )
                              ]
                           )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween
                     ),
                     // height: 60,
                     width: 334
                  ),
                  SizedBox
                  (
                     height: 18,
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
                                          fontSize: 8.5,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.3
                                       ),
                                       text: 'Camille Coste Photographie ',
                                    ),
                                 ),
                              ],
                              mainAxisAlignment: MainAxisAlignment.center
                           ),
                           Row
                           (
                              children:
                              [
                                 Text
                                 (
                                    'camillecostephotographie@gmail.com',
                                    style: TextStyle
                                    (
                                       color: PdfColors.blue700,
                                       decoration: TextDecoration.underline,
                                       fontSize: 9,
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
                     height: 60,
                     width: 425
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