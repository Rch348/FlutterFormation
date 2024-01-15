import 'dart:io';

void main(){

    const int seuil = 20;
    
    print('Entrez un nombre.');
    int champNb = int.parse(stdin.readLineSync()!);

    print('Le nombre saisi est $champNb.');

    if(champNb < seuil){
        int result = champNb * 2;
        //print("Le double de $champNb est $result.");
        print("Le double de $champNb est ${ result * 2 }.");
    } else {
        print("Entrez un nombre inférieur à 20.");
    }

}