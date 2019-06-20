
import 'Person.dart';
/**
 * @program: dart_example
 * @description:继承
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-19 16:34
 **/
void main() {
  var student = Student();//隐式类型
  student.study();

  student.name = "Tom";
  student.age = 16;
//  student._birthday = "";//不能访问私有方法

  student.run();

  Person person = new Student();//子类的实例赋值给父类的一个引用

  if(person is Student){
    person.study();
  }

}

class Student extends Person {//单继承，跟Java一样;c++这种多继承会引发菱形问题

  @override
  void run() {
    // TODO: implement run
    //super.run();
    print("Student is runing...");
  }

  void study() {
    print("Student is studying...");
  }
}

