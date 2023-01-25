void main(List<String> args) {
  if('ali'.isAdmin()){
    print('evet admin');
  }

  String? name;
  print(name.isAdmin());
}

extension StringUserCheckExtension on String?{
  bool isAdmin(){
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}