void main() {
  // var vehicules = {
  //   'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero'],
  //   'Camions': ['Renault truck', 'Mercedes-Benz Unimog']
  // };

  // for (var vehicule in vehicules.values) {
  //   print(vehicule);
  // }

  // ou

  // for (var vehicule in vehicules.keys) {
  //   print(vehicule);
  //   for (var modele in vehicules[vehicule]) {
  //      print('- )
  //  }
  // }

  var vehicules = [
    {
      'voitures': ['C3 aircross', 'Passat', 'Dacia Sandero']
    },
    {
      'camions': ['Renault truck', 'Mercedes-Benz Unimog']
    }
  ];

  for (var vehicule in vehicules) {
    for (var element in vehicule.values) {
      print(element);
    }
  }

}
