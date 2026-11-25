class BankAccount {
  int accountID;
  double balance;
  BankAccount(this.accountID, this.balance);
  BankAccount.empty(this.accountID) : balance = 0;
  void withdraw(double amount){
    if (balance >= amount){
      balance -= amount;
      print("Withdraw successful");
    } else{
      print("Insufficient balance");

    }
  }
  void deposit (double amount){
    balance += amount;
    print("Deposit successful");
  }
  void display(){
    print("Account ID: $accountID");
    print("Balance: $balance");
  }
}
void main(){
  BankAccount account1 = BankAccount(101 , 500);
  BankAccount account2 = BankAccount.empty(102);
  account1 . deposit(200);
  account1 . withdraw(100);
  account1 . display();
  account2 . display();

}