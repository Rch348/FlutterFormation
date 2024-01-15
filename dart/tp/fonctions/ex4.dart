int renvoiVoy(String text) {
  List<String> voy = ['a', 'e', 'i', 'o', 'u', 'y'];
  // String result = '';
  int nv = 0;
  for (int i = 0; i < text.length; i++) {
    if (voy.contains(text[i].toLowerCase())) {
      // result += text[i];
      // nv = result.length;
      nv++;
    }
  }
  return nv;
}

void main() {
  String phr = 'Avion Embraer';
  int voyelles = renvoiVoy(phr);

  print('Le nombre de voyelle dans $phr sont : $voyelles');
}
