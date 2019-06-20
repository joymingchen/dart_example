/**
 * @program: dart_example
 * @description: 泛型
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-20 14:17
 **/

void main(){
  var list = new List<String>();

  list.add("1");
  list.add("2");

  var utils = new Utils<String>();
  utils.put("1");

  var util = new Util();
  util.put(1);

}

//类级别的泛型generic
class Utils<T>{
  T element;

  void put(T element){
    this.element = element;
  }
}

class Util{

  //方法的泛型
  void put<T>(T element){
    print(element);
  }
}