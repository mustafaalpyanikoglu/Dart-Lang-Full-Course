void main(List<String> args) {
  int money = 50;
  String userName = "Veli";

  bool isCustomerRich = false;

  print('$money' + userName);

  if(money > 15){
    print('Sen zenginsin abii');
  }
  else{
    print('gerekirse simit yeriz');
  }

  money -= 10;

  if(money > 15){
    print('Sen çok zenginsin abii');
  }
  else{
    print('abi burada ne isin var');
  }

  int newCustomer = 10;
  const int bankingCost = 5;

  if(newCustomer > 5){
    print('Hoşgeldiniz beyfendi');
    newCustomer -= bankingCost;
  }
  else if(newCustomer < bankingCost){
    print('beyfendi krediniz ödeyin.');
  }
  else{
    print('beyfendi lütfen sira alinir');
  }

  final String ahmetCompany = 'Ahmet';
  final String mehmetCompany = 'Mehmet';
  final String veliCompany = 'Veli';
  final String kxCompany = 'kx';
  final String xCompany = 'x';
  const int companyLength = 2;

  String results = '';

  if(ahmetCompany.length > companyLength){
      results += ahmetCompany;
  }
  if(mehmetCompany.length > companyLength){
    results += mehmetCompany;
  }if(veliCompany.length > companyLength){
    results += veliCompany;
  }if(kxCompany.length > companyLength){
    results += kxCompany;
  }if(xCompany.length > companyLength){
    results += xCompany;
  }

  if(results.isEmpty){
    print('patron bulamadik');
  }
  else{
  print(results);
  }

}
