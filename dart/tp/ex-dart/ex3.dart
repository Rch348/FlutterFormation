import 'dart:io';

void main(){

    print('Entrez une note entière.');
    
    final double champNote = double.parse(stdin.readLineSync()!);

    switch(champNote){
      case >= 10 && < 12:
        print('Vous êtes passable.');
        break;
      case >= 12 && < 14:
        print('Vous avez la mention assez bien.');
        break;
      case >= 14 && < 16:
        print('Vous avez la mention bien.');
        break;
      case >= 16 && < 18:
        print('Vous avez la mention très bien !');
        break;
      case >= 18 && < 20:
        print('Vous avez la mention parfait !');
        break;
      case >= 0 && < 10:
        print('Redoublez d\'effort !');
        break;
      default:
        print('Entrez une note entre 0 et 20');
    }



  // CORRECTION



  
}