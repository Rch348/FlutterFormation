double promo(double ttc, double remise) {
  return ttc * (1 - (remise / 100));
}

void main() {
  print('Le montant avec remise est de : ${promo(45, 30)}');
}
