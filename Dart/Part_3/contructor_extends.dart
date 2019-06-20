/**
 * @program: dart_example
 * @description:继承中的构造方法
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-19 18:49
 **/

void main() {
  Student student = Student("Tom","Male");
}

class Person {
  String name;

//  Person(){//子类的构造方法默认会调用父类的无名无参的构造方法
//    print("Person...");
//  }

  Person(this.name);

  Person.withName(this.name);
}

class Student extends Person {
  int age;
  final String gender;

  Student(String name, String sex)
      : gender = sex, //初始化列表会在父类构造方法执行之前
        super(name); //如果父类没有无名无参的构造方法，则显示调用父类构造方法
}
