import 'dart:io';

class BankAccount {
  String firstName;
  String lastName;
  double
      _balance; // Attribut privé (sauf dans ce fichier) : permet de sécuriser l'accès à une donnée

  BankAccount(this.firstName, this.lastName, this._balance);

  // Getter pour lire le solde
  double get balance => _balance;

  // Setter pour lire le solde
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    }
  }

  double deposit(double numberDeposit) {
    return _balance += numberDeposit;
  }

  double withdraw(double numberWithdraw) {
    return _balance -= numberWithdraw;
  }
}

void main() {
  print('Bonjour, voulez-vous créer un compte ? (oui/non)');
  String createInput = stdin.readLineSync()!;
  while (createInput == 'non') {
    print('Bonjour, voulez-vous créer un compte ? (oui/non)');
    createInput = stdin.readLineSync()!;
  }
  print('Saisir votre prénom :');
  String firstNameInput = stdin.readLineSync()!;
  print('Saisir votre nom :');
  String lastNameInput = stdin.readLineSync()!;
  BankAccount myAccount = new BankAccount(firstNameInput, lastNameInput, 0);
  print('Saisir un montant à déposer sur votre compte :');
  double numberDeposit = double.parse(stdin.readLineSync()!);
  myAccount.deposit(numberDeposit);
  print('${myAccount._balance}');
  print('Saisir un montant à retirer :');
  double numberWithdraw = double.parse(stdin.readLineSync()!);
  myAccount.withdraw(numberWithdraw);
  print('${myAccount._balance}');
}
