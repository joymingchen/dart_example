/**
 * @program: dart_example
 * @description: 枚举
 * @author: Joymingchen
 * @Email: joymingchen@foxmail.com
 * @create: 2019-06-20 14:06
 **/

//const spring = 0;
//const summer = 1;
//const autumn = 2;
//const winter = 4;

//简化版java枚举，作用几乎等同于常量，枚举类中不能有方法。
void main() {
  var currentSeason = Season.spring;

  print(currentSeason.index);
  switch (currentSeason) {
    case Season.spring:
      print("1-3月");
      break;
    case Season.summer:
      print("4-6月");
      break;
    case Season.autumn:
      print("7-9月");
      break;
    case Season.winter:
      print("10-12月");
      break;
  }
}

//枚举类型的index属性，从0开始
//不能指定原始值
//不能指定方法
enum Season{
  spring,
  summer,
  autumn,
  winter
}
