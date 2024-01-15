import 'dart:io';

void main(){

    print('Entrez un nombre entre 1 et 7.');

    final int champNb = int.parse(stdin.readLineSync()!);

    print('Saisie : $champNb'); // Confirmation du nombre saisi
    
    switch(champNb){            // switch = "selon"
        case 1:
            print('Lundi');
            break;
        case 2:
            print('Mardi');
            break;
        case 3:
            print('Mercredi');
            break;
        case 4:
            print('Jeudi');
            break;
        case 5:
            print('Vendredi');
            break;
        case 6:
            print('Samedi');
            break;
        case 7:
            print('Dimanche');
            break;
        default:
            print('Numéro non valide, saisir un nombre entre 1 et 7');
    }

}