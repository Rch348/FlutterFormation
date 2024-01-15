//  for (int i = 0; i < eclat.length; i++) {

//   }
List<String> inverse = [];
String phInv = '';

// String inversion(String phrase) {
//   List<String> eclat = phrase.split(' ');
//   for (int i = eclat.length - 1; i >= 0; i--) {
//     inverse.add(eclat[i]);
//   }
//   inverse.reversed;
//   phInv = inverse.join(' ');
//   return phInv;
// }

// OU

String inversion(String text) {
  List<String> mots = text.split(' ');
  List<String> inverse = mots.reversed.toList();
  print(inverse);
  return inverse.join(' ');
}

void main() {
  // String chaine = 'Une simple phrase';
  String chaine2 = 'Une deuxième phrase plus complexe, plus longue';
  String inverse = inversion(chaine2);

  print(inverse);
}
