void main(List<String> args) {
  final int money1 = 100;
  final int money2 = 110;

  if(money1 > 100){
    print('beyfendi');
  }
  if(money2 > 100){
    print('aa');
  }

  String name = '';

  List<int> moneys = [100,110,500,200,300];
  final List<int> newMoneys = [100,110,500,200,300];

  print('musteri 1 parasi: ${moneys[0]}');

  moneys.sort();
  moneys.add(15);
  moneys.insert(2, 300);

  moneys.reversed.toList().add(55);
  moneys.insert(0,5);
  print(moneys);

  newMoneys.add(5);
  print(newMoneys);
  newMoneys[5] = 3;
  newMoneys.clear();
  
  print(newMoneys);

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });

  List<int> moneyCustomerNew = [100, 30, 40, 60];
  moneyCustomerNew.sort();
  for(int i = 0; i<moneyCustomerNew.length; i++){
    if(moneyCustomerNew[i] > 35){
      print('kredi hazır');
    }else if(moneyCustomerNew[i] > 0){
      print('kredi veremeyiz ama bi bakalım');
    }else{
      print('by');
    }
  }

  print('-----');
  for(int i = moneyCustomerNew.length - 1; i>= 0; i--){
    if(moneyCustomerNew[i] > 35){
      print('kredi hazır');
    }else if(moneyCustomerNew[i] > 0){
      print('kredi veremeyiz ama bi bakalım');
    }else{
      print('by');
    }
  }

  List<dynamic> users = [1,'a',true];

  for(var item in users){
    print(item);
  }

  List<String> userNames = ['ali','mehmet','ayse','veli'];
  userNames.contains('veli');
  for(var item in userNames){
    if(item == 'veli'){
      print(item);
    }
  }
}