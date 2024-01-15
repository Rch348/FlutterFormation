void main() {
  // OPERATEURS ARITHMETIQUES

  // Addition
  int resultat = 5 + 3; // resultat vaut 8
  print(resultat);

  // Soustraction
  int resSous = 5 - 3; // resSous vaut 2
  print(resSous);

  // Multiplication
  int resMult = 5 * 3; // resMult vaut 15
  print(resMult);

  // Division : Attention au résultat => Décimales !!!!
  double resDiv = 4 / 2; // resDiv vaut 2.0
//^^^^^^                                 ^^
  print(resDiv); 

  // Modulo
  int reste = 5 % 3; // reste vaut 2
  print(reste);

  // OPERATEURS DE COMPARAISONS

  // Egalité
  bool estEgal = (5 == 3); // estEgal vaut false
  print(estEgal);

  // Inégalité
  bool estInegal = (5 != 3); // estInegal evaut true
  print(estInegal);

  // Supérieur ( > ), inférieur ( < ), supérieur ou égal ( >= ), inférieur ou égal ( <= )
  bool estSup = (5 > 3); // estSup vaut true
  print(estSup);

  // OPERATEUR LOGIQUE

  // Et logique
  bool resultEt = (true && false);
  print(resultEt);

  // Ou logique
  // ignore: dead_code
  bool resultOu = (true || false);
  print(resultOu);


  // OPERATEUR D'ASSIGNATION

  // Assignation simple ( = )
  int maVariable = 6;
  print(maVariable);

  // Assignation combinée ( +=, -=, *=, /=, %= )
  int a = 5;
  a = a + 3;
  a += 3; // vaut 8cd c
}
