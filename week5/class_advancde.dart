void main(List<String> args) {
  
  final user = _User('veli','12' , age: 9);

  if(user.age is int){
    if(user.age! < 18){
      print('evet kucuk');
      user.updateMoneyWithString('TR');
    }else{
      user.updateMoneyWithNumber(15);
    }
  }
  final _newType = user.moneyType is String ? user.moneyType as String : '';
  print(_newType + 'A');

  final moneyBank1 = Bank(55,'12');
  final moneyBank2 = Bank(55,'12');

  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);


  print(moneyBank1 + moneyBank2);

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1..money += 10
            ..name = 'veli';

  print(moneyBank1);
}

class _User{
  final String name;
  final String _id;
  int? age;

  dynamic moneyType;

  _User(this.name,this._id, {this.age});

  void updateMoneyWithString(String data){
    moneyType = data;
  }

  void updateMoneyWithNumber(int number){
    moneyType = number;
  } 
}

class Bank with BankMixin{
  int money;
  final String _id;
  String? name;

  Bank(this.money, this._id);

  operator + (Bank newBank){
    return this.money + newBank.money;
  }

  void updateName(String name){
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'veli';
  }

  bool operator == (Object object){
    return object is Bank && object._id == _id;
  }
  
  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin{
    void sayBankHello();

  void calculateMoney(int money){
    print('money');
  }
}