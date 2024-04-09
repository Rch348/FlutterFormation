import 'package:flutter/material.dart';
import 'package:makepdfs/models/invoice.dart';
import 'package:makepdfs/pages/detail.dart';

class InvoicePage extends StatelessWidget 
{
   InvoicePage({super.key});

   final invoices = <Invoice>
   [
      Invoice
      (
         customer: 'David Thomas',
         address: '123 Fake St\r\nBermuda Triangle',
         items: 
         [
            LineItem
            (
               'Prise de vue du village (1 saisons) - 30 photos',
               300.00, 
               1
            ),
            LineItem
            (
               'Prise de vue du village (3 saisons) - 15 photos', 
               150.00,
               3
            ),
            LineItem
            (
               'Cession des droits patrimoniaux (par photo)', 
               5.20,
               75
            ),
         ],
         name: 'Create and deploy software package'
      ),
      Invoice
      (
         customer: 'Michael Ambiguous',
         address: '82 Unsure St\r\nBaggle Palace',
         items: 
         [
            LineItem
            (
               'Professional Advice', 
               100,
               1
            ),
            LineItem
            (
               'Lunch Bill', 
               43.55,
               2
            ),
            LineItem
            (
               'Remote Assistance', 
               50,
               3
            ),
         ],
         name: 'Provide remote support after lunch',
      ),
      Invoice
      (
         customer: 'Marty McDanceFace',
         address: '55 Dancing Parade\r\nDance Place',
         items: 
         [
            LineItem
            (
               'Program the robots', 
               400.50,
               1
            ),
            LineItem
            (
               'Find tasteful dance moves for the robots', 
               80.55,
               2
            ),
            LineItem
            (
               'General quality assurance', 
               80,
               3
            ),
         ],
         name: 'Create software to teach robots how to dance',
      )
   ];

   @override
   Widget build(BuildContext context) 
   {
      return Scaffold
      (
         appBar: AppBar
         (
            title: const Text
            (
               'Invoices'
            ),
         ),
         body: ListView
         (
            children: 
            [
               ...invoices.map
               (
                  (e) => ListTile
                  (
                     title: Text
                     (
                        e.name
                     ),
                     subtitle: Text
                     (
                        e.customer
                     ),
                     trailing: Text
                     (
                        '\$${e.totalCost().toStringAsFixed(2)}'
                     ),
                     onTap: () 
                     {
                        Navigator.of(context).push
                        (
                           MaterialPageRoute
                           (
                              builder: (builder) => DetailPage(invoice: e),
                           ),
                        );
                     },
                  ),
               )
            ],
         ),
      );
   }
}

class Estimate extends StatefulWidget
{
   @override
   _EstimateState createState() => _EstimateState();
}

class _EstimateState extends State<Estimate>
{



   @override
   Widget build(BuildContext context)
   {
      return Scaffold
      (
         appBar: AppBar
         (
            title: Text
            (
               'Formulaire Devis',
            )
         ),
         body: Column
         (
            children:
            [
               Text
               (
                  'Saisir les coordonnées du client :'
               ),
               TextField
               (
                  // decoration: InputDecoration
                  // (
                  //    border: 
                  // ),
                  maxLines: 4,
               ),

            ],
         ),
      );
   }
}