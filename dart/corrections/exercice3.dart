import 'dart:io';

void main() {


  double moyenne = double.parse(stdin.readLineSync()!);

  if(moyenne >= 10 && moyenne < 12 ){
    print('passable');
  } else if(moyenne >= 12 && moyenne < 14){
    print('Assez bien');
  } else if(moyenne >= 14 && moyenne < 16){
    print('Bien');
  } else if(moyenne >= 16 && moyenne < 18){
    print('Très bien');
  } else if(moyenne >= 18 && moyenne <= 20){
    print('Excellent');
  } else {
    print('Pas reçu');
  }

  




}