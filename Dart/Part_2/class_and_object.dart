import 'person.dart';

/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 17:30
 **/
void main(){
  var person = new Person();
  var person2 = Person();

  person.name = "Tom";
  person.age = 18;

  person.work();
}