import 'Animal.dart';

// Mot clé 'extends' permet d'étendre la classe Animal à la classe Oiseau : Oiseau hérite des propriétés et méthodes d'Animal
class Oiseau extends Animal {
  void crier() {
    print('L\'oiseau crie.');
  }
  // @override : Décorateur ou mot clé permettant de redéclarer une méthose déclarée dans une classe parent
  @override
  void seDeplacer() {
    print('L\'oiseau se déplace');
  }
}
