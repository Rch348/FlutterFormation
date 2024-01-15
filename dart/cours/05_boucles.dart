import 'dart:io';

void main() {
  // FOR
  // for (initialisation; condition; iteration) {
  //   instruction(s) à répéter
  // }

  List<int> n = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  const seuil = 4;

  for (int i = 0; i < seuil /* ou n.length */; i++) {
    // print('Tour n°$i)
    print(n[i]);
  }

  // FOR IN (POUR CHAQUE ELMENT DANS) => utilisé pour les listes (ou tableaux) ou maps
  // for (declaration variable in tableau) {
  //    instruction(s)
  // }

  List<String> fruits = ['Fraise', 'Pomme', 'Kiwi', 'Orange'];

  for (var fruit in fruits) {
    print(fruit);
  }

  Map<String, dynamic> u = {
    'prenom': 'Feisar',
    'age': '127',
    'email': 'feisar@gmail.com'
  };

  for (var element in u.keys /* ou 'u.values' */) {
    print(u[element] /* ou 'element' */);
  }

  List<Map<String, dynamic>> us = [
    {'prenom': 'Feisar', 'age': '127', 'email': 'feisar@gmail.com'},
    {'prenom': 'AG-Systems', 'age': '112', 'email': 'ag-systems@gmail.com'}
  ];

  for (var u in us) {
    print(u['email']);
  }

  // for (var u in us) {

  //   for (var element in u.keys) {

  //     if (element == 'email') {

  //       print(u[element]);

  //     }

  //   }

  // }

  for (var u in us) {
    u.forEach((key, value) => (print('$key : $value')));
  }

  // WHILE : TANT QUE la condition est vraie, on continue de boucler
  // while (condition) {
  //  instruction(s)
  // }

  int x = 0;
  while (x != 6) {
    print(x);
    x++;
  }

  print('La valeur actuelle de x est $x');

  int champU = int.parse(stdin.readLineSync()!);

  while (champU != 10) {
    print('Essaye encore.');
    print('Trouve le nombre à deviner :');
    champU = int.parse(stdin.readLineSync()!);
  }

  // Exercice : Faire deviner un nombre on indiquant s'il est plus petit ou plus grand
  const int devineN = 18;

  print('Devine un nombre.');
  int champD = int.parse(stdin.readLineSync()!);

  while (champD != devineN) {
    if (champD > devineN) {
      print('Plus petit !');
      print('Saisis un nombre.');
      champD = int.parse(stdin.readLineSync()!);
    } else if (champD < devineN) {
      // ou seulement else
      print('Plus grand !');
      print('Saisis un nombre.');
      champD = int.parse(stdin.readLineSync()!);
    }
  }

  print('Bravo !');

  // DO ... WHILE ( Faire ... tant que )
  // do {
  //   instruction(s)
  // } while (condition);

  do {} while (champD != devineN);
}
