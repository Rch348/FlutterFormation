/*
  1. Initialisation des chambres de l'Hôtel :
      Développez une fonction initialiserChambres qui crée un certain
      nombre de chambres avec un statut "disponible" ou "réservé".

  2. Fonction pour réserver une chambre :
    Créez une fonction reserverChambre qui permet de réserver une chambre
    disponible pour une certaine période. La fonction doit vérifier la disponibilité
    de la chambre avant de confirmer la réservation.

  3. Fonction pour annuler une réservation :
    Écrivez une fonction annulerReservation qui change le statut d'une
    chambre réservée en "disponible".

  4. Fonction pour afficher l'état des chambres :
    Implémentez une fonction afficherEtatChambres qui affiche le statut de
    toutes les chambres de l'hôtel


*/

import 'dart:io';

List<Map<String, dynamic>> rooms = [];

// Fonction initialise le nom de chambre 
void initRooms(int roomsQty){

  for(int i = 1; i <= roomsQty; i++){
    rooms.add({'roomNumber': i, 'status' : 'free'});
  }

}

// pour KEN
// void initRooms(int roomsQty, int roomStart){

//   for(int i = roomStart; i <= (roomStart + roomsQty); i++){
//     rooms.add({'roomNumber': i, 'status' : 'free'});
//   }

// }


String roomBooking(int roomNumber, int nights){

  for(var room in rooms){

    print('Chambre ${room['roomNumber']}');

    // solution 1 
    // if(room['roomNumber'] == roomNumber && room['status'] == 'free'){

    //   room['status'] = 'booked';
    //   return 'La réservation de la chambre n°$roomNumber a bien été pris en compte';

    // }

    // solution 2
    if(room['roomNumber'] == roomNumber){
      if(room['status'] == 'free'){
        room['status'] = 'booked';
        room['numberOfNight'] = nights;
        return 'La réservation de la chambre n°$roomNumber a bien été pris en compte';
      }else{
        return 'La chambre n°$roomNumber est déjà réservé';
      }
    }

    // else{
    //   return 'La chambre n°$roomNumber est déjà réservé';
    // }

  }
  return 'La chambre n°$roomNumber est déjà réservé (fin de la fonction)';

}

String roomCancel(int roomNumber){

  for(var room in rooms){

    if(room['roomNumber'] == roomNumber){
      if(room['status'] == 'booked'){
        room['status'] = 'free';
        room['numberOfNight'] = 0;
        return 'La réservation de la chambre n°$roomNumber a bien été pris en compte';
      }else{
        return 'La chambre n°$roomNumber est déjà réservé';
      }
    }

  }
  return 'La chambre n°$roomNumber est déjà réservé (fin de la fonction)';


}

void roomDisplay(){

  for (var room in rooms) {
    print('Chambre n°${room['roomNumber']} est ${room['status']} ${room['status'] == 'booked' ? '${room['numberOfNight']} nuit(s)' : '' }');
  }

}


void main() {
  // Pour KEN
  // int roomsQty2 = 10;
  // for(int i = 1; i <= roomsQty2; i++){
  //   rooms.add({'number': i, 'status' : 'free'});
  // }

  // print('Veuillez saisir le nombre de chambre que vous possédez : ');
  // int roomsQty = int.parse(stdin.readLineSync()!);
  // initRooms(roomsQty, rooms.length + 1);
  
  print('Veuillez saisir le nombre de chambre que vous possédez : ');
  int roomsQty = int.parse(stdin.readLineSync()!);
  initRooms(roomsQty);


  // int roomsQty = 10;
  // for(int i = 1; i <= roomsQty; i++){
  //   rooms.add({'number': i, 'status' : 'free'});
  // }

  // for(var room in rooms){
  //   if(room['number'] == 4 && room['status'] == 'free'){
  //     room['status'] = 'booked';
  //     print(room);
  //   }
    
  // }

  print('Veuillez saisir le numéro de la de chambre que vous voulez réserver : ');
  int roomNumber = int.parse(stdin.readLineSync()!);
  print('Veuillez saisir le nombre de nuit : ');
  int nightNumber = int.parse(stdin.readLineSync()!);

  print(roomBooking(roomNumber, nightNumber));

  roomDisplay();


  // print('Veuillez saisir le numéro de la de chambre que vous voulez annuler : ');
  // int roomNumber2 = int.parse(stdin.readLineSync()!);


  // print(roomCancel(roomNumber2));




}