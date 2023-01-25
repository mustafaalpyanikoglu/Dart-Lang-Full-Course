void main(List<String> args) {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);

  print(customerMouse.name);

  if(customerMouse == Mouses.a4){}

  if(customerMouse.name == 'a4'){}

  switch (customerMouse) {
    case Mouses.magic:
      break;
    case Mouses.apple:
      break;
    case Mouses.logitech:
      break;
    case Mouses.a4:
      break;
  }

  if(customerMouse.isCheckName('a4')){
    print('aa');
  }
}

enum Mouses{
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses{
  bool isCheckName(String name){
    return this.name == name;
  }
}