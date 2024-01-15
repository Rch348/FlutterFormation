void main() {
  // 1.
  List<int> nombres = [145, 27, 07, 2004];
  // List<int> listeNombres = List.generate(10, (index) => index + 1);

  // 2.
  // List nombresPairs = [];
  // for (int nombre in nombres) {
  //   if (nombre % 2 == 0) {
  //     nombresPairs.add(nombre);
  //   }
  // }
  // ou
  List<int> nombresPairs = nombres.where((nombre) => nombre % 2 == 0).toList();
  
  // 3.
    print(nombresPairs);
}
