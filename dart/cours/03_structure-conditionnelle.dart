void main(){

  // IF ( SI )
  var condition;
  if(condition){
    // Exécutera une instruction
  }

  double moyenne = 12.3;



  // IF ELSE ( SI ... SINON )
  if(moyenne == 12.3){
    
    print("J'ai la moyenne");

  } else {

    print("Je n'ai pas la moyenne");

  }



  int nombre = 19;
  
  if(nombre % 2 == 0){

    print('$nombre est paire');

  } else {
    
    print('$nombre est impaire');

  }



  // ET
  // (condition 1) et (condition 2) sont vérifiées
  
  

  // TERNAIRE 
  // condition ? si vrai : si faux





// SWITCH ( SELON )
  String role = 'admin';

  switch (role) {  
    case 'admin' :
      print('Vous êtes administrateur');
      break;
    case 'editor':
      print('Vous êtes éditeur');
      break;
    default:
      print('Vous êtes un simple éditeur');
  }

}