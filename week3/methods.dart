void main(List<String> args) {
  final int userMoney = 0;
  controlUserMoney(userMoney,5);
  controlUserMoney(6,5);

  final newUserMoney = 50;
  int result = conertToDolar(userMoney);
  print(result);

  final newResult = convertToStandartDolar(100, dolarIndex: 13);
  final newResult2= convertToStandartDolar(100);
  final newResult3 = convertToEuro(userMoney: 500);
  print(sayHello('alp'));
}

void controlUserMoney(int userMoney, int minimumValue){
  if(userMoney > minimumValue){
    print('parasi var');
  }
  else{
    print('parasi yok');
  }
}

int conertToDolar(int userMoney){
  return (userMoney/13).toInt();
}

int convertToStandartDolar(int userMoney,{int dolarIndex = 14}){
  return (userMoney/dolarIndex).toInt();
}

int convertToEuro({required int userMoney,int dolarIndex = 14}){
  return (userMoney/dolarIndex).toInt();
}

String sayHello(String name){
  return 'Hello $name';
}