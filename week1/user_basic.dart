void main(List<String> args) {
  int userMoney = 25;
  String userName = 'Veli';

  userMoney += 5;

  print('Merhaba $userName $userMoney');
  userMoney -= 10;
  print("Paraniz deger kaybetti $userMoney");

  userMoney = (userMoney / 2).toInt();

  double ahmetMoney = 15.2;
  ahmetMoney /=2 ;
  print('Ahmet beyin parası= $ahmetMoney');
}