/**
 * 闭包
 */
void main() {
  var function = a();
  function();
  function();
  function();
  function();
}

a() {
  var count = 0;

  printCount() {
    print(count++);
  }

//  return printCount;//局部方法返回闭包
  return () {
    print(count++); //匿名方法返回闭包，更常见一些
  };
}
