/**
 * @program: dart_example
 * @description: 抽象类
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-20 10:58
 **/

void main(){
  var student = Student();
  student.run();
}

abstract class Person{//抽象类不能被实例化，只能被继承
  void run();
}

class Student implements Person{
  @override
  void run() {
    print("runing...");//与Java中的接口类似
  }
}