List<Map<String, dynamic>> films = [
  {
    'titre': 'film1',
    'année': 1998,
    'acteurs': ['acteur1', 'acteur2']
  },
  {
    'titre': 'film2',
    'année': 1999,
    'acteurs': ['acteur1']
  },
  {
    'titre': 'film3',
    'année': 2001,
    'acteurs': ['acteur1', 'acteur2', 'acteur3', 'acteur4']
  },
  {
    'titre': 'film4',
    'année': 2004,
    'acteurs': ['acteur1', 'acteur2', 'acteur3']
  }
];

// 1) Fonction qui affiche les infos d'un film :
void affichFilm(List<Map<String, dynamic>> films) {
  for (var film in films) {
    print('${film['titre']}, ${film['année']}');
    for (var acteur in film['acteurs']) {
      print(acteur);
    }
    print('');
  }
}

// 2) Tri avant 2000 et après 2000
List<Map<String, dynamic>> filmAvant(List<Map<String, dynamic>> film) {
  List<Map<String, dynamic>> avant2000 = [];
  for (var film in films) {
    if (film['année'] < 2000) {
      avant2000.add(film);
    }
  }
  return avant2000;
}

List<Map<String, dynamic>> filmApres(List<Map<String, dynamic>> film) {
  List<Map<String, dynamic>> apres2000 = [];
  for (var film in films) {
    if (film['année'] >= 2000) {
      apres2000.add(film);
    }
  }
  return apres2000;
}

void main() {
  List<Map<String, dynamic>> avant2000 = filmAvant(films);
  print('Films avant 2000 :');
  affichFilm(avant2000);

  List<Map<String, dynamic>> apres2000 = filmAvant(films);
  print('Films après 2000 :');
  affichFilm(apres2000);
}
