class Voiture {
  // Les attributs :
  String? marque;
  String? modele;

  // Le constructeur :
  Voiture(String marque, String modele) {
    this.marque = marque; // this = attribut de l'objet en train d'être créé
    this.modele = modele;
  }

  // Les méthodes = Des fonctions de classe :
  void demarrer() {
    print('Vroum Vroum');
  }
}

void arreter() {
  print('prrh');
}

class Animal {
  String nom;
  int age;
  String race;

  Animal(this.nom, this.age, this.race);

  manger() {
    print('Miam miam');
  }

  boire() {
    print('Glou glou');
  }

  dormir() {
    print('Rrrrrrrrrr pshhhh');
  }
}

void main() {
  var maVoiture = Voiture('Toyota', 'Land Cruiser'); // => Type objet
  // OU Voiture maVoiture = Voiture('Toyota', 'Land Cruiser'); => Type objet
  print(maVoiture.marque);
  Animal chien = Animal('Kajou', 9, 'Epagneul');
  print(chien.nom);
  chien.manger();
  Animal castor = Animal('Papa', 100, 'Noir');
  castor.dormir();
}
