/**
 * @program: dart_example
 * @description:
 * @author: Joymingchen
 * @create: 2019-06-18 19:20
 **/

class Logger {
  final String name;

  static final Map<String, Logger> _cache = Map<String, Logger>();//静态变量，缓存

  //构造方法前用 factory 关键字修饰，且该构造方法会返回该对象
  factory Logger(String name) {
    //缓存的操作
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name); //私有的内部构造方法

  void log(String msg) {
    print(msg);
  }
}
