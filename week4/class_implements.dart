void main(List<String> args) {
  
}

abstract class IStudent{
  final String name;
  final int age;

  int? schoolId;

  IStudent(this.name, this.age);

  void saySomething(){
    print(age);
  }
}

class Student implements IStudent{
  final String name;
  final int age;

  Student(this.name, this.age);

  @override
  void saySomething(){
    print('studen1');}

  @override
  int? schoolId;
}

class Student2 implements IStudent{
  final String name;
  final int age;

  Student2(this.name, this.age);
  
  @override
  void saySomething(){
    print('studen2');
  }
  
  @override
  int? schoolId;
}