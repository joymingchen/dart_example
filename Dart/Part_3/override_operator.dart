/**
 * @program: dart_example
 * @description: 覆写操作符
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-20 11:52
 **/

void main(){
  var person1 = Person(18);
  var person2 = Person(20);
  print(person1 > person2);
  print(person1["age"]);
  print(person1 == person2);
}

class Person{
  int age;

  Person(this.age);

  bool operator >(Person person1){
    return this.age > person1.age;
  }

  int operator [](str){
    if("age" == str){
      return age;
    }
    return 0;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              age == other.age;

  @override
  int get hashCode => age.hashCode;
}