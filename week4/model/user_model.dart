class User{
  late final String name;
  late int money;
  late final int? age;
  late final String? city;

  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}){
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    this.userCode = (city ?? 'sivas') + name;
  }

  bool isSpecialUser(String id){
    return _id == id;
  }

  bool get isEmptyId => _id.isEmpty;
}