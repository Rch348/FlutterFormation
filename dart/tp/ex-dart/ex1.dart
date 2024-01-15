import 'dart:io';

void main(){

    print('Entrez un nombre.');
    
    final double champNb = double.parse(stdin.readLineSync()!);

    if(champNb > 0){
        print("Positif");
    } else if (champNb < 0){
        print("Négatif");
    } else {
        print("Zéro");
    }

    // OU

    switch(champNb){
        case > 0:
            print('Positif');
            break;
        case < 0:
            print('Négatif');
            break;
        default:
            print('Zéro');
    }

    // OU

     switch(champNb){
        case > 0:
            print('Positif');
            break;
        case < 0:
            print('Négatif');
            break;
        case == 0:
            print('Zéro');
            break;
        default:
            print('Zéro');
    }
}