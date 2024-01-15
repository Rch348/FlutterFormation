void main() {
  // Déclaration d'une variable
  String name = 'Feisar';

  // Déclaration d'une variable (camelCase)
  var nomDeVariable = 'toto';
  // Déclaration d'une variable (PascalCase)
  var AutreNom;
  // Déclaration d'une variable (snake_case)
  var nom_var;

  /**
   * int : entiers (integers)
   * double : décimaux, nombres à virgule flottante
   * String : chaînes de caractères *MAJ*
   * bool : booléen (true/false)
   * List : liste d'éléments (array/tableau) *MAJ*
   * Map : associations clé-valeurs (array assoc/tableau associatif) *MAJ*
   * dynamic : type de donnée pouvant changer pendant l'exécution 
   */

  int nombre = 10;
  double prix = 99.99;

  bool isMajor = true;

  List<String> fruits = ['pomme', 'poire', 'orange'];

  // Tableau associatif contenant des clés de type chaînes de caractères et des valeurs pouvant prendre n'importe quel type
  Map<String, dynamic> uti = {'nom': 'Feisar', 'age': 27, 'aVoiture': true};

  // Constantes :
  const dbNom = 'domotique';

  // Pour les valeurs ne pouvant pas être connues avant la compilation
  final temps = DateTime.now();

  // Résumé
  // Deux types de nombres
  int x = 100;
  double y = 22.9;
  int z = 50;

  // Les chaînes de caractères
  String char = 'Bonjour $name ! Il fait beau aujourd\'hui';
  String char2 = "Bonjour ! Il fait beau aujourd'hui";
  String char3 = "${x + z}";

  print(nomDeVariable);

  print(AutreNom);

  print(nom_var);
  print(nombre);
  print(prix);
  print(isMajor);
  print(fruits);
  print(uti);
  print(dbNom);
  print(temps);
  print(y);
  print(char);
  print(char2);
  print(char3);
}
