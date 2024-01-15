// String sansVoyelle(String mot) {
//   String nvMot = '';
//   for (int i = 0; i <= mot.length; i++) {
//     if (i == 'a' || i == 'e' || i == 'i' || i == 'o' || i == 'u' || i == 'y') {
//       nvMot = mot.replaceRange(i, i, '');
//       print(nvMot);
//     }
//   }
//   return nvMot;
// }

// void main() {
//   String sansV = sansVoyelle('voyelle');
//   print(sansV);
// }

// Fonction suppression voyelles
String deleteVowels(String text) {
  // text = text.toLowerCase();

  // Ajout des majuscules pour les retourner si le mot en contient
  List<String> vowels = [
    'a',
    'e',
    'i',
    'o',
    'u',
    'y',
    'A',
    'E',
    'I',
    'O',
    'U',
    'Y'
  ];
  String result = '';

  // Parcours de la chaîne de caractères reçu en paramètre (stocké dans text)
  for (int i = 0; i < text.length; i++) {
    // contains() : méthode pour vérifier si le caractère actuel est dans la liste des voyelles 
    // Si le caractère a l'index i de la chaîne n'est pas dans la liste des voyelles, alors...
    if (!vowels.contains(text[i])) {
      // On ajoute le caractère de l'index i (ex : au tour 1, i = 0 donc text[0] = 'H') dans la variable result (on assemble donc tous les caractères entre eux)
      result += text[i];
      // result = '' + 'H' pour le 1er tour de boucle
    }
  }

  return result;
}

void main() {
  String text = 'Hello World';
  String result = deleteVowels(text);

  print(result);
}
