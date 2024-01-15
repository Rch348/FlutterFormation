String estPalindrome(String mot) {
  for (int i = 0, j = mot.length - 1; i < mot.length; i++, j--) {
    if (mot[i] != mot[j]) {
      return '$mot n\'est pas un palindrome.';
    }
  }
  return '$mot est un palindrome.';
}

// OU

bool pal(String mot) {
  String motInv = '';
  for (int i = mot.length - 1; i >= 0; i--) {
    motInv += mot[i];
  }
  print(motInv);
  return motInv == mot;
}

// OU

bool isPalindrome(String mot){
  mot = mot.toLowerCase();
  String motInverse = mot.split('').reversed.join('');
  return mot == motInverse;
}

void main() {
  String palindrome = estPalindrome('ana');
  print(palindrome);

  bool pali = pal('ani');
  print(pali);

  //OU

  String mot1 = 'radar';
  String mot2 = 'voiture';

  print('$mot1 est un palindrome : ${mot1}');
  print('$mot2 est un palindrome : ${mot2}');

  print('$mot1 ${isPalindrome(mot1) ? 'est un palindrome.' : 'n\est pas un palindrome.'}');
}
