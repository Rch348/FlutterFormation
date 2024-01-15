import 'dart:io';

void main() {
  // for (int i = 0; i < 5; i++) {
  //   print('* * * * * * * *');
  // }

  // ou

  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 8; i++) {
      stdout.write('* '); // Ecriture de * 8 fois
    }
    stdout.write('\n'); // Retour à la ligne 5 fois
  }

  // for (int i = 0; i < 6; i++) {
  //   print('* * * * * *');
  // }

  print('Triangle rectangle isocèle de 7 * de côté :');
  for (int i = 0; i <= 7; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.write('\n');
  }

//   String e = '';

//   for (int i = 0; i < 7; i++) {
//     e += '* ';
//     print(e);
//   }
// }
}
