/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 19:48
 **/

void main() {
  var page = Page();
  page.scrollUp();//不能访问静态方法

  Page.scrollDown();//类可以直接访问静态方法，不需要声明对象就可以访问
}

class Page {
  static int currentPage = 1;

  //类中的常量需要用static const 来声明
  static const int maxPage = 10;

  //下滑
  static void scrollDown() {
    //静态方法不能访问非静态变量
    currentPage = 1;//静态方法用到了类中的属性，所以变量也必须是静态的
    print("ScroolingDown...");
  }

  //上滑
  void scrollUp() {
    //非静态方法可以访问静态变量
    currentPage++;
    print("ScrollingUp...");
  }
}
