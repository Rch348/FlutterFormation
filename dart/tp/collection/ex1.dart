void main() {
  // 1.
  List<int> nombres = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // ou
  List<int> nombres2 = List.generate(100, (index) => index + 1);
  print(nombres);
  print(nombres2);

  // 2.
  nombres.addAll([11, 13, 15]);
  print(nombres);
  // ou
  for (int i = 11; i <= 15; i++) {
    if (i % 2 != 0) {
      nombres.add(i);
    }
  }
  // ou
  for (int i = 11; i <= 15; i+=2) {
      nombres.add(i);
  }

  // 3.
  int somme = nombres.reduce((valeur, element) => valeur + element);
  print(somme);
  // ou
  int somme2 = 0;
  for (int nombre in nombres) {
    // somme = somme + nombre;
    somme2 += nombre;
  }
  print(somme2);
}
