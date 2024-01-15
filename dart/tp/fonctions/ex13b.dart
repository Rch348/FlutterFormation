import 'dart:io';

List<Map<String, dynamic>> stock = [
  {'Nom': 'Litchi', 'Prix unitaire': 4.1, 'Quantité': 10},
  {'Nom': 'Tomate', 'Prix unitaire': 5.2, 'Quantité': 20},
  {'Nom': 'Whisky', 'Prix unitaire': 30.3, 'Quantité': 3},
  {'Nom': 'Date', 'Prix unitaire': 6.4, 'Quantité': 18}
];

List<Map<String, dynamic>> commande = [];

void ajoutStock() {
  print('Saisir un produit à ajouter au stock :');
  String champNom = stdin.readLineSync()!;
  print('Saisir le prix unitaire de ce produit :');
  double champPrix = double.parse(stdin.readLineSync()!);
  print('Saisir la quantité de ce produit à ajouter au stock :');
  int champQuantite = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < stock.length; i++) {
    if (stock[i]['Nom'] == champNom) {
      stock[i]['Quantité'] += champQuantite;
      return;
    }
  }
  stock.add(
      {'Nom': champNom, 'Prix unitaire': champPrix, 'Quantité': champQuantite});
}

void affichStock() {
  print('Produits en stock :');
  for (var item in stock) {
    print('${item['Nom']} : ${item['Prix unitaire']}€ x ${item['Quantité']}');
  }
}

bool estDansStock(List<Map<String, dynamic>> stock, String champNom) {
  for (var item in stock) {
    if (champNom == item['Nom']) {
      return true;
    }
  }
  return false;
}

bool estNumerique(String champQuantite) {
  // List<int> n = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  if (champQuantite.contains(RegExp(r'^-?(([0-9]*)|(([0-9]*)\;([0-9]*)))$'))) {
    return true;
  }
  return false;
}

void priseCommande() {
  affichStock();

  print('Saisir un produit disponible en stock :');
  String champNom = stdin.readLineSync()!;
  while (estDansStock(stock, champNom) == false) {
    print('Produit invalide.');
    affichStock();
    print('Saisir un produit disponible dans le stock :');
    champNom = stdin.readLineSync()!;
  }

  print('Saisir la quantité de ce produit :');
  String userInput = stdin.readLineSync()!;
  while (estNumerique(userInput) == false) {
    print(
        'Saisie invalide. Veuillez saisir la quantité du produit souhaité (avec chiffres compris entre 0 et 9) :');
    userInput = stdin.readLineSync()!;
  }

  int champQuantite = int.parse(userInput)
  ;
  // commande.add({'Nom': champNom, 'Quantité': champQuantite});

  // for (int i = 0; i < commande.length; i++) {
  //   if (commande[i]['Nom'] == champNom) {
  for (int j = 0; j < stock.length; j++) {
    if (stock[j]['Nom'] == champNom) {
      stock[j]['Quantité'] -= champQuantite;
      commande.add({
        'Nom': champNom,
        'Quantité': champQuantite,
        'Prix unitaire': stock[j]['Prix unitaire']
      });
      break;
    }
  }
  //   }
  // }
}

void affichCommande() {
  print('Voici votre commande :');
  for (var item in commande) {
    print('${item['Nom']} : ${item['Quantité']} x ${item['Prix unitaire']}€');
  }
}

double coutTotal(List<Map<String, dynamic>> commande) {
  double total = 0;
  for (var item in commande) {
    total += item['Prix unitaire'] * item['Quantité'];
    // for (var prod in stock) {
    //   if (item['Nom'] == prod['Nom']) {
    //     total += prod['Prix unitaire'] * item['Quantité'];
    //   }
    // }
  }
  return total;
}

void main() {
  while (true) {
    print('Menu principal :');
    print('1) Ajouter un produit au stock.');
    print('2) Affiche le stock.');
    print('3) Passer une commande.');
    print('4) Afficher votre commande.');
    print('5) Afficher le total de la commande.');
    print('6) Quitter.');
    print('Sélectionnez une option (1 à 6) :');

    int choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        ajoutStock();
        break;
      case 2:
        affichStock();
        break;
      case 3:
        priseCommande();
        break;
      case 4:
        affichCommande();
      case 5:
        print('Le coût total de la commande est de ${coutTotal(commande)}');
        break;
      case 6:
        exit(0);
      default:
        print('Erreur : Veuillez saisir une option valide.');
    }
  }
}
