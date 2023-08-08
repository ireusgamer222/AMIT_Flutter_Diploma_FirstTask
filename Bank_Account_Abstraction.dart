import 'dart:io';

// Implement an abstract class called BankAccount that defines
// common properties and methods for bank accounts. Then, create concrete classes like
// SavingsAccount and CheckingAccount that inherit from the BankAccount class. Implement
// specific behavior for each account type, such as interest calculation for savings accounts
// and overdraft protection for checking accounts.

void main(){
  SavingAcoounts account1 = SavingAcoounts(name: "Mohamed");
  account1.deposit(1000);
  account1.DisplayInfo();
  account1.BuySomething(500);
  account1.DisplayInfo();
  print("--------------------------------------------------------------------------------");

  CheckingAccounts account2 = CheckingAccounts(name: "Ahmed");
  account2.deposit(1000);
  account2.DepoistCheckAccount(500);
  account2.DisplayInfo();
  account2.WithdrawCheckAccount(700);
  account2.DisplayInfo();
}



abstract class BankAccount{
  double money = 0;
  String? User;
  void BuySomething(double price);
  void withdraw(double amount){
    money -= amount;
  }
  void deposit(double amount){
    money += amount;
  }
  void DisplayInfo();

}

class SavingAcoounts extends BankAccount{
  static double interests = 0.2;

  SavingAcoounts({double money1 = 0, String? name}){
    super.money = money1;
    super.User = name;
  }

  double InterestCalculation(double price){
    return price * interests;
  }

  @override
  void BuySomething(double price){
    if(super.money >= InterestCalculation(price)){
      money -= InterestCalculation(price);
    }
    else{
      print("Sorry, you can't buy this product because you don't have enough money");
    }
  }

  @override
  void DisplayInfo(){
    print("The name of the user is $User");
    print("The amount of the money stored in the account is $money");
  }

}


class CheckingAccounts extends BankAccount{
  double sec_money = 0;

  CheckingAccounts({double money1 = 0, String? name,this.sec_money = 0}){
    super.money = money1;
    super.User = name;
  }

  void DepoistCheckAccount(double amount){
    sec_money += amount;
  }

  void WithdrawCheckAccount(double amount){
    if(amount > sec_money){
      money -= (amount - sec_money);
      sec_money = 0;
    }
    else{
      sec_money -= amount;
    }
  }

  @override
  void BuySomething(double price){
    if(sec_money >= price){
      sec_money -= price;
    }
    else{
      print("Sorry, you can't buy this product because you don't have enough money");
    }
  }

  @override
  void DisplayInfo(){
    print("The name of the user is $User");
    print("The amount of the money stored in the main account is $money");
    print("The amount of money stored in the checking account is $sec_money");
  }


}