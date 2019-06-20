/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-19 16:06
 **/
/**
 * 对象的类里面要是实现了 call 方法 则该对象可以被当作方法调用
 * 如这里面的 person()
 */
void main(){
  Person person = Person();
  print(person("Tom",15));
}

class Person{
  String name;
  int age;

  void work(){
    print("His name is $name,his age is $age.working");
  }

  //把对象作为方法使用，主要是实现了call方法，名称是call就行了
  //不建议这样使用
  String call(String name,int age){
    return "Name is $name. Age is $age. Calling!";
  }
}