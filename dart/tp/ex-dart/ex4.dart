import 'dart:io';

void main(){

    print('Entrez un premier nombre.');
    final int champNb = int.parse(stdin.readLineSync()!);

    print('Entrez un deuxième nombre.');
    final int champNb2 = int.parse(stdin.readLineSync()!);

    champNb < 0 && champNb2 > 0 || champNb > 0 && champNb2 < 0 ? print('Le produit des deux nombres est négatif.') : print('Le produit des deux nombres est positif.');

    // Ou

    // if (champNb < 0 && champNb2 > 0 || champNb > 0 && champNb2 < 0) {
    //     print('Positif');
    // } else {
    //     print('Négatif');
    // }

}