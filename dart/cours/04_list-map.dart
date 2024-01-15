import 'dart:io';

void main() {
  // List
  var nombres = [1, 2, 3, 4];

  // Ajouter un élément à la fin du tableau
  nombres.add(5);

  print(nombres);
  print(nombres[0]);

  List<dynamic> pays = [
    'France',
    'Paris',
    67,
    true,
    ['fromage', 'baguette', 'croissant']
  ];

  // Propriétés pour les list :
  // length, first, last, isEmpty
  print(pays.length);
  print(pays[4].length); // Affiche la longueur du tableau imbriqué
  print(pays[4][1].length); // Affiche la longueur du mot 'baguette
  print(pays.first); // Affiche le 1er élément du tableau
  print(pays.last); // Affiche le dernier élément du tableau (le 2ème tableau)
  print(pays.last.last); // Affiche le dernier élément du tableau imbriqué
  print(pays[4]
      .last); // Idem mais plus optimisé (ne calcule pas le nombre d'éléments présents dans le tableau)
  print(pays[4][1]); // Affiche 'baguette'

  if (pays.isEmpty) {
    print('Liste vide');
  } else {
    print('il y a au moins un élément dans la liste');
    String capital = pays[1];
    print(capital);
  }

  // Méthodes :
  // add(élément)
  // addAll(plusieurs éléments)
  // clear()
  // indexOf(élément)
  // remove(élément)

  List<String> voitures = ['Renault', 'Citroen', 'Peugeot'];
  voitures.add('Tesla');
  voitures.addAll(['Porsche', 'Fiat', 'Toyota']);
  voitures.clear();
  voitures.indexOf('Fiat', 2);
  print(voitures);

  List<String> paysMonde = [
    'France',
    'Espagne',
    'Angleterre',
    'Norvège',
    'Belgique',
    'Suède'
  ];

  /*
  afficher nb pays
  1er pays
  suppr
  affich si liste est vide
  ajouter 3 pays dans la liste
  afficher la liste
  suppr le dernier
  */

  print(paysMonde.length);
  print(paysMonde[0]); // ou paysMonde.length;
  paysMonde.clear();
  print('La liste est vide ? ${paysMonde.isEmpty ? 'oui' : 'non'}');
  print('La liste est vide ? ${paysMonde.length == 0 ? 'oui' : 'non'}');
  paysMonde.addAll(['Japon', 'Tunisie', 'Hongrie']);
  print(paysMonde);
  paysMonde.removeLast();
  print(paysMonde);

  // Panier

  List<String> prod = ['T-shirt', 'Pantalon', 'Chaussures', 'Pull'];

  List<String> panier = [];

  print('Quel article souhaitez-vous ?');
  print('1- ${prod[0]}');
  print('2- ${prod[1]}');
  print('3- ${prod[2]}');
  print('4- ${prod[3]}');
  final int reponseUti = int.parse(stdin.readLineSync()!);
  print(prod[reponseUti - 1]);

  panier.add(prod[reponseUti]);

  prod.removeAt(reponseUti);

  print('Produits disponibles : $prod');
  print('Panier : $panier');

  // SET
  // Collection unique, pas de doublons

  // Map
  Map<String, String> dico = {
    'Dart': 'Language informatique',
    'Flutter': 'Framework Dart',
    'Firebase': '"Back-end"',
    'Visual Studio Code': 'Éditeur de code'
  };

  print(dico);
  
}
