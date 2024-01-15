// 1)
void ajoutItem(String nom, int quantite, double prixUnitaire,
    List<Map<String, dynamic>> facture) {
  facture
      .add({'Nom': nom, 'Quantité': quantite, 'Prix unitaire': prixUnitaire});
}

// 2)
void affichItem(List<Map<String, dynamic>> facture) {
  print('Facture :');
  for (var item in facture) {
    print(
        '${item['Nom']} : ${item['Quantité']} unités - ${item['Prix unitaire']} €');
  }
}

// 3)
double montantTotal(List<Map<String, dynamic>> facture) {
  print('Montant total :');
  double total = 0;
  for (var item in facture) {
    total += item['Quantité'] * item['Prix unitaire'];
  }
  return total;
}

void main() {
  List<Map<String, dynamic>> facture = [];

  ajoutItem('poirot', 1, 2, facture);
  ajoutItem('poire', 3, 5, facture);

  affichItem(facture);

  double total = montantTotal(facture);
  print(total);
}
