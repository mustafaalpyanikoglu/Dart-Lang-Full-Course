void main(List<String> args) {
  Map<String,int> users = {
    'ahmet':15,'mehmet':20
  };
  print('ahmetin parasi: ${users['ahmet']}');

  for(var item in users.keys){
    print('${item} - ${users[item]}');
  }

  for(var i=0; i< users.length;i++){
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }

  final Map<String,List<int>> vbBank = {
    'ahmet':[100,300,200]
  };
  vbBank['mehmet'] = [30,50];
  vbBank['veli'] = [30];

  for(var item in vbBank.keys){
    for(var money in vbBank[item]!){
      if(money > 150){
        print('${item} kredin hazir');
        break;
      }
    }
  }

  for(var name in vbBank.keys){
    int result = 0;
    for(var money in vbBank[name]!){
      result += money;
    }
  print('${vbBank[name]} senin toplam paran -> ${result}');
  }

}