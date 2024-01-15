List<Map<String, String>> livres = [
  {
    'nom': 'Le meilleur des mondes',
    'auteur': 'Aldous Huxley',
    'anneePublicat': '1931',
    'urlAchat': 'http://lmdm.com'
  },
  {
    'nom': '1984',
    'auteur': 'Orwel',
    'anneePublicat': '1950',
    'urlAchat': 'http://1984.com'
  },
  {
    'nom': 'Le seigneur des anneaux',
    'auteur': 'J.R.R. Tolkien',
    'anneePublicat': '1925',
    'urlAchat': 'http://lsda.com'
  },
  {
    'nom': 'Star Wars',
    'auteur': 'Georges Lucas',
    'anneePublicat': '1977',
    'urlAchat': 'http://starwars.com'
  },
  {
    'nom': 'Harry Potter',
    'auteur': 'J.K. Rowling',
    'anneePublicat': '1965',
    'urlAchat': 'http://hp.com'
  },
  {
    'nom': 'La fin des temps',
    'auteur': 'Barjavel',
    'anneePublicat': '1985',
    'urlAchat': 'http://lfdt.com'
  }
];

// List<String> filtre(String auteur) {
//   List<String> livre = [];
//   for (var elt in livres) {
//     for (var livre in elt.entries) {
//       print(livre);
//     }
//   }
//   return livre;
// }

void affichLivre(List<Map<String, dynamic>> livres) {
  // 1) Afficher toutes les infos des livres
  for (var livre in livres) {
    for (var key in livre.keys) {
      print(' - $key : ${livre[key]}');
    }
    print('');
  }
}

// 2) Filtrer par auteur

List<Map<String, dynamic>> filtreAuteur(
    List<Map<String, dynamic>> livres, String auteur) {
  List<Map<String, dynamic>> filtreLivres = [];
  for (var livre in livres) {
    if (livre['auteur'] == auteur) {
      filtreLivres.add(livre);
    }
  }
  return filtreLivres;
}

// bool dansListe(Map<String, dynamic>, String auteur){
//   for(var value in livre.values){
//     if(value is String && value.contains(auteur)){
//       return true;
//     }
//   }
// }

void main() {
  String champU = 'Aldous Huxley';
  var filtreLivre = filtreAuteur(livres, champU);

  affichLivre(filtreLivre);
}
