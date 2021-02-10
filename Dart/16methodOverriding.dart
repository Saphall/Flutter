// @override - same method in inheritance

class X {
  String name;
  X(this.name);

  void showOutput() {
    print(this.name);
  }
}

class Y extends X {
  Y(String name) : super(name);

  @override //overrided written for safe purpose
  void showOutput() {
    print(this.name);
    print('Hello');
  }
}

main(List<String> args) {
  var s = Y('Saphal');
  s.showOutput();
}

//for making getter and setter use : get or set keyword
