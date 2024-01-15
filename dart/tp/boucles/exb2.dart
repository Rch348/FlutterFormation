import 'dart:math';

void main() {
  List<int> tab = [];

  for (int i = 0; i < 20; i++) {
    int nAleat = Random().nextInt(200) - 100;
    tab.add(nAleat);
  }

  print(tab);

  List<int> tab1 = [];
  List<int> tab2 = [];

  for (var n in tab) {
    if (n < 0) {
      tab1.add(n);
    } else if (n > 0) {
      tab2.add(n);
    }

  print(tab1);
  print(tab2);

  }
}
