import 'dart:io';

void main() {
  List<dynamic> notes = [];
  int? n;

  while (n != -1) {
    
    print('Saisis une note, une par une et saisis -1 quand tu as terminé.');
    n = int.parse(stdin.readLineSync()!);
    notes.add(n);

    if (n == -1) {
      
      notes.removeLast();
      print(notes);
    
      }
  
  }

  // OU

  List<double> tabNotes = [];
  double note = 0;

  while (tabNotes != -1) {
    print('Saisis une note :');
    note = double.parse(stdin.readLineSync()!);

    if (note != -1) {
      
      tabNotes.add(note);

    } 
  
  }

}
