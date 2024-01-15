int valAbs(int n) {
  // if (n < 0) {

  //   // OU int abs = n * (-1);
  //   return -n;
  //   // return abs;

  // }
  // return n;
  // return n < 0 ? -n : n;

  return n.abs();
}

void main() {
  int abs = valAbs(-4);
  print('La valeur absolue est $abs');
}
