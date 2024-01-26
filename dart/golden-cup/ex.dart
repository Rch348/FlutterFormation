import 'dart:io';
import 'dart:math';

List<String> lots = [];
List<Map<String, dynamic>> billets = [];
List<Map<String, dynamic>> gagnants = [];

Random hasard = Random();

void afficherLot() {
  return print('Voici les lots disponibles : ${lots}');
}

void afficherBillet() {}

void ajouterLot() {
  print('Saisir un lot à ajouter à la liste :');
  String champLot = stdin.readLineSync()!;
  for (var lot in lots) {
    while (champLot == lot) {
      print('Saisir un lot n\'existant pas dans la liste :');
      champLot = stdin.readLineSync()!;
    }
  }
  lots.add(champLot);
  print(lots);
}

void acheterBillets() {
  print('Achat de billet de tombola : Saisis ton nom :');
  String nom = stdin.readLineSync()!;
  int numBillet = hasard.nextInt(1000);
  for (var billet in billets) {
    while (numBillet == billet['Numéro']) {
      numBillet = hasard.nextInt(1000);
    }
  }
  billets.add({'Numéro': numBillet, 'Nom': nom});
  print(billets);
}

void effectuerTirage() {
  print('Saisir un nombre de gagnants :');
  int champGagnant = int.parse(stdin.readLineSync()!);
  while (champGagnant > lots.length + 1) {
    print(
        'Le nombre de gagnants saisi est supérieur au nombre de lots disponible. Saisir un nombre inférieur !');
    champGagnant = int.parse(stdin.readLineSync()!);
  }
  for (int i = 1; i <= champGagnant; i++) {
    int aleat = hasard.nextInt(billets.length);
    if (aleat != gagnants[aleat]) {}
    gagnants.add(billets[aleat]);
  }
  print(gagnants);
}

void attribuerLots() {
  for (var gagnant in gagnants) {
    gagnant['lot'] = lots[0];
    lots.removeAt(0);
    print(gagnant['lot']);
  }
}

void afficherResultats() {
  for (var gagnant in gagnants) {
    print(
        'Le gagnant n°${gagnant['Numéro']} a reçu le lot ${gagnant['lot']} !');
  }
}

void main() {
  while (true) {
    print('Tombola avec lots à gagner.');
    print('Menu principal :');
    print('1) Ajouter un lot');
    print('2) Acheter un billet');
    print('3) Tirage au sort');
    print('4) Attribuer des lots');
    print('5) Afficher les résultats');
    print('6) Quitter');
    print('Sélectionnez une option (de 1 à 6) :');

    int choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        ajouterLot();
        break;
      case 2:
        acheterBillets();
        break;
      case 3:
        effectuerTirage();
        break;
      case 4:
        attribuerLots();
        break;
      case 5:
        afficherResultats();
        break;
      case 6:
        exit(0);
      default:
        print(
            'Saisie invalide, veuillez saisir une option valide (entre 1 et 6) :');
    }
  }
}
