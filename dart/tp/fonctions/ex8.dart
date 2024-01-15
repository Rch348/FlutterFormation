double ttc(double ht, double tva) {
  return ht * (1 + tva / 100);
}

void main() {
  print('Le montant total (TVA incluse) est de : ${ttc(179, 20)}');
}
