// Vous devez développer un système de gestion de stock pour un magasin. Écrivez des
// fonctions pour effectuer les opérations suivantes :
// 1. Ajouter un produit au stock avec son nom, prix unitaire et quantité.
// 2. Afficher le stock actuel.
// 3. Passer une commande en spécifiant le produit, la quantité désirée et le prix unitaire
// convenu.
// 4. Afficher le coût total de la commande.
// import 'dart:io';

// 1)
void ajoutProd(String nom, double prixUnitaire, int quantite,
    List<Map<String, dynamic>> stock) {
  stock.add({'Nom': nom, 'Prix unitaire': prixUnitaire, 'Quantité': quantite});
}

// 2)
void affichProd(List<Map<String, dynamic>> stock) {
  print('Détail du stock:');
  for (var item in stock) {
    print('${item['Nom']} : ${item['Prix unitaire']} € x ${item['Quantité']}');
  }
}

// 3)
void ajoutCommande(String nom, double prixUnitaire, int quantite,
    List<Map<String, dynamic>> commande) {
  commande
      .add({'Nom': nom, 'Prix unitaire': prixUnitaire, 'Quantité': quantite});
}

void affichCommande(List<Map<String, dynamic>> commande) {
  for (var produit in commande) {
    print(
        '${produit['Nom']} : ${produit['Prix unitaire']} € x ${produit['Quantité']}');
  }
}

double coutTotal(List<Map<String, dynamic>> commande) {
  double total = 0;
  for (var produit in commande) {
    total += produit['Quantité'] * produit['Prix unitaire'];
  }
  return total;
}

void main() {
  List<Map<String, dynamic>> stock = [];
  List<Map<String, dynamic>> commande = [];

// 1)
  // print('Il y a dans mon stock : $stock.');
  // stock.add({'Nom': 'Unité centrale', 'Prix': 1000, 'Quantité': 3});
  // stock.add({'Nom': 'Écran', 'Prix': 100, 'Quantité': 7});
  // stock.add({'Nom': 'Clavier', 'Prix': 50, 'Quantité': 4});
  // stock.add({'Nom': 'Souris', 'Prix': 20, 'Quantité': 4});

  ajoutProd('Unité centrale', 1000, 3, stock);
  ajoutProd('Écran', 100, 6, stock);
  ajoutProd('Clavier', 50, 3, stock);
  ajoutProd('Souris', 20, 3, stock);

// 2)
  // print('Il y a dans mon stock apres ajout : $stock');
  affichProd(stock);

// 3)
  // print('Veuillez saisir votre produit :');
  // String champNom = stdin.readLineSync()!;
  // print('Vous avez saisi $champNom. Veuillez saisir la quantité :');
  // int champQuantite = int.parse(stdin.readLineSync()!);
  // print('Vous avez saisi $champQuantite $champNom');
  // double champPrix = double.parse(stdin.readLineSync()!);
  ajoutCommande('Unité centrale', 1000, 1, stock);
  ajoutCommande('Écran', 100, 2, stock);
  ajoutCommande('Unité centrale', 50, 1, stock);
  ajoutCommande('Unité centrale', 20, 1, stock);
  affichCommande(commande);
  double total = coutTotal(commande);
  print(total);
}
