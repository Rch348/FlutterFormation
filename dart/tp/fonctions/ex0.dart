// 1.
double somme(double n1, double n2) {
  return n1 + n2;
}

// 2.
double difference(double n1, double n2) {
  return n1 - n2;
}

// 3.
double produit(double n1, double n2) {
  return n1 * n2;
}

// 4.
dynamic quotient(double n1, double n2) {
  // Vérifier si les nombres ne sont pas égaux à 0 car pas divisible
  if (n2 != 0) {
    return n1 / n2;
  }
  return 'Erreur : Division par zéro impossible.';
}

void main() {
  double n1 = 10.0;
  double n2 = 7.4;
  print('Addition : ${somme(n1, n2)}');
  print('Différence : ${difference(n1, n2)}');
  print('Produit : ${produit(n1, n2)}');
  print('Quotient : ${quotient(n1, n2)}');
}
