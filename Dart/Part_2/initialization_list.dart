/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 19:39
 **/

//初始化列表
class Person{
  String name;
  int age;
  final String gender;

  Person.withMap(Map map) : name = map["name"],gender = map["gender"]{//初始化列表
    this.age = map["age"];
  }
}