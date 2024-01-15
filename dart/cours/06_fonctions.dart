  // Fonction sans retour valeur
  // TypeError nomDeLaFonction(TypeParamtre1 parametre1, TypeParametre2 parametre2){

  //  // Intructions

  // }

  // Déclaration de la fonction
  void afficherMessage(String message){
    print(message);
  }

  // Fonction avec retour de valeur
  int somme(int chiffre1, int chiffre2){
    return chiffre1 + chiffre2;
  }

  // Fonction avec des paramètres positionnels
  String direBonjour(String prenom, String nom){
    return 'Bonjour $prenom $nom';
  }

  // Fonctions avec des paramètres nommés
  String direBonjour2({String? prenom, String? nom}){
    return 'Bonjour2 $prenom $nom';
  }

  // Fonction avec des paramètres nommés et valeur par défaut pour le parametre nom
  String direBonjour3({String? prenom, String nom = 'Doe'}){
    return 'Bonjour3 $prenom $nom';
  }

  // Fonction avec des paramètres optionnels (on ne peut pas combiner les paramètres mixés et optionnels)
  dynamic direBonjour4(String? prenom, [int? age]){
    return 'Bonjour4 $prenom vous avez $age ans';
  }

  

void main() {

  // l'appel de la fonction
  String texte = 'tata';
  afficherMessage(texte);

  int resultat = somme(2,5);
  print(resultat);

  String bonjour = direBonjour('Ken', 'Roche');
  print(bonjour);

  String bonjour2 = direBonjour2(nom: 'Roche', prenom: 'Ken');
  print(bonjour2);

  String bonjour3 = direBonjour3(prenom: 'Ken');
  print(bonjour3);

  dynamic bonjour4 = direBonjour4('Ken');
  print(bonjour4);

}





