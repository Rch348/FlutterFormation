import 'dart:io';

void main() {
  // 1.
  print('Entrez un nombre n.');
  final int n = int.parse(stdin.readLineSync()!);
  
  bool estNbPrem = true;

  // 2.
  for (int i = 2; i < n; i++) {
    
    if (n % i == 0) {
  
      print('$n n\'est pas un nombre premier.');
      estNbPrem = false;
      break;
  
    }
  
  }

  // 3.
  if (estNbPrem) {
    
    print('$n est un nombre premier.');
  
  }

}
