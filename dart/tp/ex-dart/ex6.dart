import 'dart:io';

void main(){

//     print('Sélectionnez une boisson.');     

//     print('1 - Café');
//     print('2 - Thé');
//     print('3 - Lait');
//     print('4 - Chocolat');
//     print('5 - Tisane');
//     print('6 - Chicorée');
//     print('7 - Eau');

//     final int champBoisson = int.parse(stdin.readLineSync()!);

//     print('Avec ou sans sucre ? (oui/non)');
//     final String champSucre = stdin.readLineSync()!;
    
//     switch(champBoisson){
//         case '1':
//             print('Voici votre café');
//             break;
//         case '2':
//             print('Voici votre thé');
//             break;
//         case '3':
//             print('Voici votre lait');
//             break;
//         case '4':
//             print('Voici votre chocolat');
//             break;
//         case '5':
//             print('Voici votre tisane');
//             break;
//         case '6':
//             print('Voici votre chicorée');
//             break;
//         case '7':
//             print('Voici votre eau');
//             break;
//         default:
//             print('Saisir un chiffre entre 1 et 7 correspondant à votre choix');
//     }

// print('Sélectionnez une boisson.');
//     champBoisson = stdin.readLineSync()!;
//     print('Vous avez choisi $champBoisson.');
    
//     switch(champBoisson){
//         case 'Café':
//             print('du café');
//             break;
//         case 'Thé':
//             print('du thé');
//             break;
//         case 'Lait':
//             print('du lait');
//             break;
//         case 'Chocolat':
//             print('un chocolat');
//             break;
//         case 'Tisane':
//             print('une tisane');
//             break;
//         case 'Chicorée':
//             print('une chicorée');
//             break;
//         case 'Eau':
//             print('de l\'eau');
//             break;
//         default:
//             print('Saisir une boisson correspondant à la sélection');
//     }



//     if(champSucre == 'oui'){
//         print('Vous avez choisi $champBoisson avec sucre !');
//     } else if(champSucre == 'non'){
//         print('Vous avez choisi $champBoisson sans sucre !');
//     } else {
//         print('Saisir oui ou non');
//     }

// OU

  print('Sélectionnez une boisson.');     

    print('1 - Café');
    print('2 - Thé');
    print('3 - Lait');
    print('4 - Chocolat');
    print('5 - Tisane');
    print('6 - Chicorée');
    print('7 - Eau');

    final int champBoisson = int.parse(stdin.readLineSync()!);

    print('Avec ou sans sucre ? (oui/non)');
    final String champSucre = stdin.readLineSync()!;

    bool sucre = champSucre.toLowerCase() == 'oui ? true : false;';
    
    switch(champBoisson){
        case 1:
            print('Voici votre café ${ sucre ? 'sucré' : ''}');
            break;
        case 2:
            print('Voici votre thé ${ sucre ? 'sucré' : ''}');
            break;
        case 3:
            print('Voici votre lait ${ sucre ? 'sucré' : ''}');
            break;
        case 4:
            print('Voici votre chocolat ${ sucre ? 'sucré' : ''}');
            break;
        case 5:
            print('Voici votre tisane ${ sucre ? 'sucré' : ''}');
            break;
        case 6:
            print('Voici votre chicorée ${ sucre ? 'sucré' : ''}');
            break;
        case 7:
            print('Voici votre eau ${ sucre ? 'sucré' : ''}');
            break;
        default:
            print('Saisir un chiffre entre 1 et 7 correspondant à votre choix');
    }

}
