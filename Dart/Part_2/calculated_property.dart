/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 17:43
 **/
//计算属性
void main() {
  var rect = Rectangle();
  rect.width = 10;
  rect.height = 15;

  print(rect.area());

  rect.areaProperty = 15;

  print(rect.areaProperty);
}

class Rectangle {
  num width, height;

  num area()=> width * height; //获取面积的方法

  num get areaProperty => width * height; //计算属性
  set areaProperty(value) => width = value / height;
}
