/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 19:11
 **/
void main(){
  const person = Person("Tom","Male",18);
}

class Person{
  final String name;
  final String gender;
  final int age;

  const Person(this.name,this.gender,this.age);//常量,只用赋值一次的，可以用常量，编译速度更快

  void work(){
    print("working...");
  }
}