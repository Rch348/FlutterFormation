import 'dart:io';

void main() {
  
  // 1.
  print('Entrez un nombre N.');
  final int n = int.parse(stdin.readLineSync()!);
  print(n);

  // 2.
  // for (int i = 0; i < n; i++) {
  //   int incr = i++;
  //   int resultat = i + incr;
  //   print(resultat);
  // }

  int somme = 0;
  for (int i = 1; i <= n; i++) {
    
    // somme = somme + i;
    somme += i;
    print('Somme = $somme');
  
  }

  // 3
  print('La somme des nombres d e1 à $n est : $somme.');

}
