/**
 * @program: dart_example
 * @description: 匿名方法相关示例
 * @author: Joymingchen
 * @create: 2019-06-18 17:43
 **/
void main() {
  var function = (str) {
    print("print:" + str);
  };

  function("Test");

//  ((str){
//    print("print:" +str);
//  })("Test");

  var list2 = ["h","e","l","l","o"];
//  var result = listToString(list2, (str) {return str * 3;});
  var result = listToString2(list2);
  print(result);

}

List listToString(List list, String function(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = function(list[index]);
  }
  return list;
}

List listToString2(List list) {
  var function = (str){ return str * 3;};
  for (var index = 0; index < list.length; index++) {
    list[index] = function(list[index]);
  }
  return list;
}