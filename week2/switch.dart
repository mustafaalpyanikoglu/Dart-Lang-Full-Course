void main(List<String> args) {
  final int classDegree = 5;
  bool isSuccess = false;

  const int succesValueHigh = 2;

  switch (classDegree) {
    case succesValueHigh:
      print('bravo');
      isSuccess = true;
      break;
    case 1:
      print('olur');
      isSuccess = true;
      break;
    case 0:
      print('yeterli');
      isSuccess = true;
      break;
    default:
    print('basarisiz');
      isSuccess = false;
  }
  print('beyfendiz cocugunuzun sonucu: $isSuccess');

  String name = 'veli';
  const String specialUser1 = 'veli';
  const String specialUser2 = 'ekin';
  switch (name) {
    case specialUser1:
    case specialUser2:
      print('bravo');
      break;
    default:
    print('sorunlu');
  }

}