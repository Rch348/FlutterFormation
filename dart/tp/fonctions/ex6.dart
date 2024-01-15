import 'dart:math';

String mdpGen(int longueur) {
  const minPermis = 'azertyuiopqsdfghjklmwxcvbn';
  const majPermis = 'AZERTYUIOPQSDFGHJKLMWXCVBN';
  const numPermis = '0123456789';
  String carPermis = majPermis + minPermis + numPermis;
  Random aleat = Random();
  String mdp = '';

  mdp += minPermis[aleat.nextInt(minPermis.length)];
  mdp += majPermis[aleat.nextInt(majPermis.length)];
  mdp += numPermis[aleat.nextInt(numPermis.length)];

  // OU

  // String min = minPermis[aleat.nextInt(minPermis.length)];
  // String maj = majPermis[aleat.nextInt(majPermis.length)];
  // String num = numPermis[aleat.nextInt(numPermis.length)];
  // String carPermis = min + maj + num;

  for (int i = mdp.length; i < longueur; i++) {
    int indexAl = aleat.nextInt(carPermis.length);
    mdp += carPermis[indexAl];
  }

  List<String> mdpMel = mdp.split(' ');
  mdpMel.shuffle();
  String nvMdpMel = mdpMel.join('');

  // OU

  // while (!mdp.contains(RegExp(r'[a-zA-Z0-9]'))) {
  //   mdp = '';
  //   for (int i = 0; i < longueur; i++) {
  //     int indexAl = aleat.nextInt(carPermis.length);
  //     mdp += carPermis[indexAl];
  //   }
  // }

  // return mdp;
  return nvMdpMel;
}

void main() {
  int lgMdp1 = 18;
  int lgMdp2 = 24;

  print('Mot de passe 1 : ${mdpGen(lgMdp1)}');
  print('Mot de passe 2 : ${mdpGen(lgMdp2)}');
}
