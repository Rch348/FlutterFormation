import 'dart:io';

void main() {
  // // 1.
  // print('Entrez un nombre N.');
  // final int n = int.parse(stdin.readLineSync()!);

  // // 2.
  // for (int i = 1; i <= 10; i++) {
  //   print('$n x $i = ${n * i}');
  // }

  // Faire un programme générant toutes les tables de
  // multiplication jusqu'à 10

  // for (int i = 1; i <= 10; i++) {
  //   for (int j = 1; j <= 10; j++) {
  //     print('$i x $j = ${i * j}');
  //   }
  // }

  print('Entrez un nombre :');
  int n = int.parse(stdin.readLineSync()!);

  bool estPrem = true;

  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      estPrem = false;
      break;
    }
  }

  if (estPrem) {
    print('$n est premier.');
  } else {
    print('$n n\'est pas premier.');
  }
}
