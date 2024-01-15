import 'dart:io';
import 'dart:math';

List<Map<String, dynamic>> questions = [];
int scoreTotal = 0;

void ajouterQuestion(String texteQuestion, String reponse1, String reponse2,
    String reponse3, String solution, List<Map<String, dynamic>> questions) {
  questions.add({
    'Question': texteQuestion,
    'Réponse 1': reponse1,
    'Réponse 2': reponse2,
    'Réponse 3': reponse3,
    'Solution': solution
  });
  return;
}

Random hasard = Random();

void poserQuestion() {
  for (int i = 0; i < questions.length; i++) {
    int indexAleatoire = hasard.nextInt(questions.length);
    print('Voici une question : ${questions[indexAleatoire]['Question']}');
    print('Choisir une réponse (de 1 à 3):');
    print('${questions[indexAleatoire]['Réponse 1']}');
    print('${questions[indexAleatoire]['Réponse 2']}');
    print('${questions[indexAleatoire]['Réponse 3']}');
    int champReponse = int.parse(stdin.readLineSync()!);
    if (champReponse == questions[indexAleatoire]['Solution']) {
      print('Bravo');
    }
  }
}
