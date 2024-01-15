import 'dart:io';

void main() {


  /*
    Écrivez un programme qui demande de saisir deux nombres à l’utilisateur et l’informe ensuite si
    leur produit est négatif ou positif (on laisse de côté le cas où le produit est nul).
    Attention toutefois : on ne doit pas calculer le produit des deux nombres.
  */

  print('Veuillez saisir un premier nombre : ');
  final int nombre1 = int.parse(stdin.readLineSync()!);

  print('Veuillez saisir un deuxième nombre : ');
  final int nombre2 = int.parse(stdin.readLineSync()!);

  if( (nombre1 < 0 && nombre2 > 0) || (nombre1 > 0 && nombre2 < 0)){
    print('Produit négatif');
  }else {
    print('Produit positif');
  }

  print((nombre1 < 0 && nombre2 > 0) || (nombre1 > 0 && nombre2 < 0) ? 'Produit négatif' : 'Produit positif');

  


}