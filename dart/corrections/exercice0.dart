void main() {

  // typeDeDonnee nomVariable = valeur;
  int a = 2;
  int b = 5;

  print('avant echange');
  print('a = $a');
  print('b = $b');

  print('------');

  // solution 1
  int c = a; // c = 2
  a = b; // a = 5
  print('a = $a');
  b = c; // b = 2
  print('b = $b');

  // solution 2
  a = a + b; // a = 2 + 5 = 7
  b = a - b; // b = 7 - 5 = 2
  a = a - b; // a = 7 - 2 = 5

  

}