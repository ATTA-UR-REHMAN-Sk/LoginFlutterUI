import 'dart:convert';

abstract class Vehical {
  late int amout;
  void start(); //abstruct method b/c it  don't have a body
  //so it is compulsary for a class to abstact if there is any abstruct mthod found
  void run() {
    print('halfhsldk');
  }
}

class Car extends Vehical {
  @override
  void start() {
    print('');
  }
}

class A {
  void methodA() {
    print('Method A');
  }
}

class B {
  void methodB() {
    print('Method B');
  }
}

mixin AB on A {
  //multiple inheritence in dort without interfaces
  void methodAB() {
    print('Method AB');
  }
}

class C with A {
  //100% abstruction
  void methodC() {
    print('Method C');
  }

  @override
  void methodA() {
    // TODO: implement methodA
  }

  @override
  void methodB() {
    // TODO: implement methodB
  }
}

class Encapsulations {
  int _empId = 0; // wrap the data

// setter
  void setEmpId(int value) {
    _empId = value;
  }

  //getter
  int getEmpId() {
    return _empId;
  }
}
