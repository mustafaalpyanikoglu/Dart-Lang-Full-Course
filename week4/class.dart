import 'dart:convert';

import 'model/user_model.dart';
import 'model/user_model_2.dart';

void main(List<String> args) {
  final int customerMoney = 50;
  final String customerName = 'veli';
  final int customerAge = 13;

  if(customerAge > 10){
    print('alisvaris yapabilirsiniz');
  }else{
    print('alisvaris yapamazsiniz');
  }

  List<int?> customerMoneys = [100, null, 0];

  for(var item in customerMoneys){
    if(item != null){
      print('beyfendi');
    }else{
      print('byy');
    }
    bool result = controlMoney(item) == null ? false: true;
    print(result);
  }
}

int? controlMoney(int ?money){
  if(money != null && money > 0){
    return money;
  }

  print('------' *3 );

  int customerMoney = 15;
  User user = new User('alp', 15, id: '12');
  print(user.name);

print(user.userCode);
  if(user.city == null){
    print('musteri sehir bilgisini vermedi');
  }
  else{
    if(user.money > 15){
      print('tebrikler kazandiniz');
    }
  }

  if(user.isSpecialUser('12')){
    user.money += 5;
    print('para eklendi');
  }

  User2 user2 = new User2('vb',15);
  user2.money += 5;
}


