
abstract class Account{
  int accounntNumber;
  double blance;
  Account(this.accounntNumber,this.blance);
  deposit(double amount){
    blance += amount;

  }
  withdraw(double amount);
}
class SavingsAccount extends Account{
  double interestRate;

  SavingsAccount(super.accounntNumber, super.blance,this.interestRate);

  @override
  withdraw(double amount) {
     if(amount<=blance){
       blance = blance - amount;
       blance = blance + blance*interestRate;
     }
     else{
       print("Not sufficient funds");
     }
  }
}
class CurrentAcconunt extends Account{
  double overdraftLimit;

  CurrentAcconunt(super.accounntNumber, super.blance,this.overdraftLimit);

  @override
  withdraw(double amount) {
    if (amount <= blance + overdraftLimit) {
      blance -= amount;
    } else {
      print("Insufficient funds for withdraw.");
    }
  }
}void main(){
  print("Savings Account");
  SavingsAccount num1 =SavingsAccount(2001, 20000, 2);
  print("account blance:${num1.blance}");
  num1.deposit(500);
  print("Blance after deposit:${num1.blance}");
  num1.withdraw(13000);
  print("Blance after withdraw:${num1.blance}");
  print("");
  print("CurrentAccount");
  CurrentAcconunt num2 =CurrentAcconunt(2002, 10000, 5000);
  print("account blance:${num2.blance} & creditlimit: ${num2.overdraftLimit}");
  num2.deposit(5000);
  print("Blance after deposit:${num2.blance}");
  num2.withdraw(14000);
  print("Blance after withdraw:${num2.blance}");
}


