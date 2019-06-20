/**
 * @program: dart_example
 * @description: Mixins 混入 类似多继承
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-20 11:24
 **/

void main() {
  var d = D();
  d.a();
}

//Mixins类似于多继承，是在多类继承中重用一个类代码的方式
//作为Mixins类不能有显示声明构造方法
//Mixins的类只能继承于object
//使用关键字with来连接
class D extends A with B, C {
}

//主继承的类
class A {
  a() {
    print("A.a()...");
  }

  b() {
    print("A.b()...");
  }

  c() {
    print("A.c()...");
  }
}

//Mixins的类
class B {
  a() {
    print("B.a()...");
  }

  b() {
    print("B.b()...");
  }

  c() {
    print("B.c()...");
  }
}

//Mixins的类
class C {
  a() {
    print("C.a()...");
  }

  b() {
    print("C.b()...");
  }

  c() {
    print("C.c()...");
  }
}

abstract class Engine {
  void work();
}

class OilEngine implements Engine {
  @override
  void work() {
    print("Work with oil");
  }
}

class ElectricEngine implements Engine {
  @override
  void work() {
    print("Work with electric");
  }
}

class Tyre {
  String name;

  void run() {}
}

class Car = Tyre with ElectricEngine;//Mixins的简写方式

//class Car extends Tyre with ElectricEngine{
//
//}

//可以将多个模块之间组装
class Bus = Tyre with OilEngine;