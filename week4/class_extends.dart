void main(List<String> args) {
  final userNormal = User('vb', 15);
  final usersBank = BankUser('name', 155, 123);
  final userSpecial = SpecialUser('asdas', 123123, 123123, 33);

  userNormal.sayMoneyWithCompanyName();
  usersBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();
  print(userSpecial.calculateMoney);
  print(userSpecial.money);
}

abstract class IUser{
  late final String name;
  late final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName(){
    print('Ahmet- $money paraniz vardir');
  }
}

class User extends IUser{

  User(String name, int money):super(name,money);
}

class BankUser extends IUser{
  late final int bankingCode;

  BankUser(String name, int money, this.bankingCode):super(name,money);

  void bankSpecialLogic(){
    print('Ahmet- $money paraniz vardir');
  }
}

class SpecialUser extends IUser{
  late final int bankingCode;
  late final int _disccount;

  SpecialUser(String name, int money, this.bankingCode, int disccount):super(name,money){
    _disccount = disccount;
  }

  int get calculateMoney => money - (money / _disccount).toInt();
}
