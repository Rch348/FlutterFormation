import 'animal.dart';
import 'oiseau.dart';

void main() {
  Animal monAnimal = new Animal();
  monAnimal.seDeplacer();

  Oiseau monOiseau = new Oiseau();
  monOiseau.crier();
  monOiseau.seDeplacer();
}
