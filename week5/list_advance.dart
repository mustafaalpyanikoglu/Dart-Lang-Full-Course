import '../week4/model/user_model.dart';

void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412, isSecondHand: false);

  final carItems = [
  CarModel(category: CarModels.bmw, name: 'bmw x5', money: 12, isSecondHand: false),
  CarModel(category: CarModels.yamaha, name: 'yamaha asdas x5', money: 45),
  CarModel(category: CarModels.toyota, name: 'toyota xasda5', money: 44, isSecondHand: false),
  CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412),
  CarModel(category: CarModels.toyota, name: 'toyota x512312', money: 55, isSecondHand: false)
  ];

  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1412);

  final isHaveCar = carItems.contains(newCar);
  isHaveCar ? print('elimizde var') : print('patron yok alalım');

  final resultBmwMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();

  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(',');
  print(carNames);

  bool isHaveCarMercedes = false;  
  try{
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
    isHaveCarMercedes = true;
  }catch(e){
    print('araba yok abi');
    isHaveCarMercedes = false;
  }finally{
    print('abi bu işlem ağır oldu bidaha sorma :) $isHaveCarMercedes');
  }

  final index = carItems.indexOf(newCar);
  print(index);

  final _mercedes = CarModel(category: CarModels.mercedes, name: 'mercedes', money: 12);
  carItems.add(_mercedes);

  carItems.sort((first,second) => second.money.compareTo(first.money));
  print(carItems);

  final users = carItems.expand((element) => element.users).toList();
  print('--------------------');
  calculateToUser(List.of(carItems));
  print('--------------------');
  carItems.remove(_mercedes);
  carItems.removeWhere((element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

void calculateToUser(List<CarModel> items){
  final _items = [...items.toList()];
  final newItems = _items.map((CarModel e) {
    if(e.isSecondHand){
      e.isSecondHand = false;
    }
    return CarModel(
      category: e.category == CarModels.bmw ? CarModels.yamaha : e.category, 
      name: e.name, 
      money: e.money, 
      isSecondHand: false);
  }).toList();

  print(newItems);
}

class CarModel{
  CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  List<User> users;
  
  CarModel({
    required this.category,
    required this.name, 
    required this.money, 
    this.city, 
    this.isSecondHand = true,
    this.users =const []
    });

  @override
  bool operator ==(Object other){
    if(identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }
  
  @override
  int get hashCode{
    return category.hashCode ^ name.hashCode ^ money.hashCode ^ city.hashCode ^ isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }

}

enum CarModels{
  bmw,
  yamaha,
  toyota,
  mercedes
}