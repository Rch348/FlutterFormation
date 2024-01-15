import 'dart:io';

List<Map<String, dynamic>> invoice = [
  {'nom': 'carotte', 'quantite': 4, 'prixUnitaire': 1.2},
  {'nom': 'pomme', 'quantite': 7, 'prixUnitaire': 1.0},
  {'nom': 'kiwi', 'quantite': 6, 'prixUnitaire': 2.0}
];

void addItemToInvoice(){
  print('Nom de l\'item :');
  String itemName = stdin.readLineSync()!;
  print('Quantité de l\'item :');
  int itemQuantity = int.parse(stdin.readLineSync()!);
  print('Prix unitaire de l\'item :');
  double itemUnitPrice = double.parse(stdin.readLineSync()!);

  // on boucle pour parcourir la list invoice afin de verifier si le nom du produit existe
  for(var i = 0; i < invoice.length; i++ ){
    // verifie si la valeur de la clé nom de l'élément parcourue est égale a celle de la saisie utilisateur
    if(invoice[i]['nom'] == itemName){
      // si oui alors on additionne les 2 quantités
      invoice[i]['quantite'] += itemQuantity;
      // on fait un return ici afin de quitté/stopé la fonction
      return;
    }
  }

  // si l'élément n'existe pas alors on l'ajoute
  invoice.add({'nom' : itemName, 'quantite' : itemQuantity, 'prixUnitaire' : itemUnitPrice});


}

void displayInvoice(){
  print('Items actuels sur la facture');
  // on parcourt la list invoice et on affiche a chaque tour les infos de l'item parcouru 
    for(var item in invoice){
      print('${item['nom']} - ${item['quantite']} unités - Prix unitaire : ${item['prixUnitaire']} €' );
    }
}

double invoiceTotal(){
  // on declare une variable totalAmount
  double totalAmount = 0;
  // on parcourt chaque item de invoice
    for(var item in invoice){
      // pour chaque item on multiplit la quantité par le prix unitaire et ajoute le resultat a totalAmount
      totalAmount += item['quantite'] * item['prixUnitaire'];
    }
    // on retourne totalAmount qui correspond a l'addition du cout de tous les items
    return totalAmount;
}


void main() {
  
  while(true){
    print('\nMenu principal: ');
    print('1. Ajouter un item');
    print('2. Voir la facture');
    print('3. Voir le montant total de la facture');
    print('4. Quitter');

    print('\n');
    print('Choisissez une option : ');
    int choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1 :
        addItemToInvoice();
        break;
      case 2 :
        displayInvoice();
        break;
      case 3 :
        print('La facture est de ${invoiceTotal()} €');
        break;
      case 4 :
        exit(0);
      default : 
      print('Option invalide, veuillez choisir une option valide');

    }
  }
  

}