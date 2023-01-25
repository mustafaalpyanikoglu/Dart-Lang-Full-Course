void main(List<String> args) {
  
  String userName = 'Veli';

  final int bankMoney = 100; //Değer değiştirilemez, runtimeda ki son değeri alır
  const String data = 'VB Bank'; //Değer değiştirilemez

  var userName2 = 'veli2';
  var userName2Money = 15;

  userName2Money -= 10;


  const String bankNameSpecial = 'VB Bank';
  final String user1 = 'Bank 1 musteri';
  const double user1Money = 100.00;


  final String user2 = 'Bank 1 musteri';
  int user2Money = 500;

  user2Money -= user1Money.toInt();

  print('User 2 money: $user2Money');
}