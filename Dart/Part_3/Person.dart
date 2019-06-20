/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-19 17:43
 **/

//父类
class Person {
  String name;
  int age;
  String _birthday;//私有属性

  bool get isAdult => age >= 18;//计算属性，是否成年

  void run() {
    print("Person is runing...");
  }
}