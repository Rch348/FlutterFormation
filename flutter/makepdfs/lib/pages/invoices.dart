// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

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

   final coordController = TextEditingController();

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
               TextField
               (
                  controller: coordController,
                  decoration: InputDecoration
                  (
                     label: Text
                     (
                        'Coordonnées client (4 lignes max):'
                     ),
                  ),
                  keyboardType: TextInputType.text,
                  maxLines: 4,
               ),
               
            ],
         ),
      );
   }
}