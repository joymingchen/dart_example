/**
 * @program: dart_example
 * @description: 接口
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-20 11:04
 **/
void main(){
  var student = Student();
  student.run();
}

class Person{
  String name;

  int  get getAge => 18;

  void run(){
   print("Person runing...");
  }
}

//类与接口是统一的，类就是接口
//每个类都隐式的定义了一个包含所有实例成员的接口
//如果复用已有类的实现，使用继承（extends）
//如果只是复用已有类的外在行为，使用接口（implements）
class Student implements Person{
  @override
  String name = "Tom";

  @override
  int get getAge => 15;

  @override
  void run() {
    print("Name is $name ,age is $getAge");
  }

}