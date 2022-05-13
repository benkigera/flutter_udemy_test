import 'package:flutter/cupertino.dart';

class Person {
  //default values
  String name;
  int age;
  Student student;
  var userName =null;

  /*
  * add @required to require an argument
  * Naming parameter
  *
  * Problem: Classes that has too many parameters would require that you input
  * each parameter in its position (positional parameters)
  *
  * Dart Solution: Named arguments
  *
  * Explanation: The solution to this is to name each parameter and also make sure
  * you only return the required arguments.
  *
  * */

  Person({@required String name, int age, Student student}) {
    this.name = name;
    this.age = age;
    this.student = student;
  }
}

class Student {
  int grade;

  Student(int grade) {
    this.grade = grade;
  }
}

double addNumbers({num num1, num num2}) {
  return num1 + num2;
}

void main() {
  // var person = Person(age: 26, student: Student(1));
  // print(person.age);
  // var isLoggedIn = false;
  // if (isLoggedIn) {
  //   print('Logged in');
  // } else {}
}
