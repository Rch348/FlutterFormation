import 'dart:io'; 

void main() {
  while (true) {
    print('\nMenu principal :');
    print('1. Ajouter un item');
    print('2. Voir la facture');
    print('3. Voir le montant total de la facture');
    print('4. Quitter');

    print('\n');
    print('Choisissez une option :');
    int choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        print('ajouter');
        break;
      case 2:
        print('facture');
        break;
      case 3:
        print('montant');
        break;
      case 4:
        exit(0);
      default:
        print('Option invalide, veuillez choisir une option valide.');
    }
    // print('$facture');
  }
}
