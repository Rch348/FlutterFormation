double masse = 0;
double taille = 0;

double imc(double masse, double taille) {
  return masse / (taille * taille);
}

void main() {
  print('Votre imc est de : ${imc(61, 1.78)}');
}
