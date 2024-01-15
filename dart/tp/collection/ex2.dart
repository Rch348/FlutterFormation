void main() {
  // 1.
  Map<String, String> dico = {
    'Dart': 'Language informatique',
    'Flutter': 'Framework Dart',
    'Firebase': '"Back-end"',
    'Visual Studio Code': 'Éditeur de code'
  };

  // 2.
  dico['Apache'] = 'Serveur web';
  // ou
  // dico.addAll({'Apache': 'Serveur web'});
  // print(dico);

  // 3.
  dico['Apache'] = 'Indien';
  print(dico);

  // 4.
  print('Dictionnaire : $dico');

  dico.forEach((cle, valeur) => print('$cle : $valeur'));

}
