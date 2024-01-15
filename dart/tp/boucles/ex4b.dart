import 'dart:io';

void main() {
  List<dynamic> notes = [];
  int? n;

  while (n != -1) {
    print('Saisis une note, une par une et saisis -1 quand tu as terminé.');
    n = int.parse(stdin.readLineSync()!);
    notes.add(n);
    if (n == -1) {
      notes.removeLast();
      print(notes);
    }
  }

  int somme = notes.reduce((valeur, element) => valeur + element);
  print('La somme de tes notes est $somme.');

  int total = notes.length;

  double moyenne = somme / total;
  print('La moyenne de tes notes est $moyenne.');
}
