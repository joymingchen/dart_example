/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 17:59
 **/

void main(){
  var person = Person("Tom",18);

  Person.withName("Alice");
}

class Person{
  String name;
  int age;
  final String gender = "Male";

  Person(this.name,this.age);//语法糖的构造方法

  Person.withName(this.name);//命名的方法创建构造方法，不能重载

  void work(){
    print("His name is $name ,his age is $age, he is working...");
  }
}