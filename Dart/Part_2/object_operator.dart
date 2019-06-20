/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-19 15:48
 **/
/**
 * 对象操作符
 * 条件成员访问：?.
 * 类型转换：as
 * 是否指定类型：is ，is!
 * 级联操作：..
 */
void main() {
  Person person;
  person?.work(); //如果不为空，才继续执行work方法；访问属性也同理

  var person2;
  person2 = "";
  person2 = Person();
  (person2 as Person).work(); //动态类型转换为Person类型，类似Java中的cast强转

  if (person2 is Person) {
    //如果person2是Person类型才执行，类似Java中的instanceof
    person2.work();
  }

  if (person2 is! Person) {
    //与is同理
    print(person2);
  }

  var person3 = Person();
  person3
    ..name = "Tom"
    ..age = 20
    ..work(); //级联操作

  //也可以这样写,new 关键字可以不写
  new Person()
    ..name = "Alice"
    ..age = 18
    ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print("His name is $name ,his age is $age. working...");
  }
}
