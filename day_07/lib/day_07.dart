int calculate() {
  return 6 * 7;
}

class Hool {
  int x = -8;
  int y = 44;
  String name = 'hool';
  bool isShow = true;
  int size = 100;
  int direction = 180;

  void sayHello() {
    print('Hello');
  }

  void sayMyName() {
    print(this.name);
  }

  void sayMyLocation() {
    print("I'm at position $x and $y");
  }

  void showMySize() {
    print('My size is $size');
  }

  void showMyDirection() {
    print('My direction is $direction');
  }

  void goToXandY(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void move(int x) {
    this.x += x;
  }

  void changeYby(int y) {
    this.y += y;
  }

  void getDirection() {
    if (0 <= this.direction && this.direction <= 90) {
      print("I'm at south east ${this.direction}");
    } else if (91 <= this.direction && this.direction <= 180) {
      print("I'm at south west ${this.direction}");
    } else if (181 <= this.direction && this.direction <= 270) {
      print("I'm at north west ${this.direction}");
    } else if (271 <= this.direction && this.direction <= 360) {
      print("I'm at north east ${this.direction}");
    } else {
      print('No direction');
    }
  }

  void showMyNameXTimes (int x) {
    for(int i=0; i<x; i++ ) {
      print(name);
    }
  }
}

class Sav {
  int x = 114;
  int y = 58;
  String name = 'Sav';
  bool isShow = true;
  int size = 100;
  int direction = 400;

  void sayHello() {
    print('Hello');
  }

  void sayMyName() {
    print(this.name);
  }

  void sayMyLocation() {
    print("I'm at position $x and $y");
  }

  void showMySize() {
    print('My size is $size');
  }

  void showMyDirection() {
    print('My direction is $direction');
  }

  void move(int x) {
    this.x += x;
  }

  void changeYby(int y) {
    this.y += y;
  }

  void getDirection() {
    if (0 <= this.direction && this.direction <= 90) {
      print("I'm at south east ${this.direction}");
    } else if (91 <= this.direction && this.direction <= 180) {
      print("I'm at south west ${this.direction}");
    } else if (181 <= this.direction && this.direction <= 270) {
      print("I'm at north west ${this.direction}");
    } else if (271 <= this.direction && this.direction <= 360) {
      print("I'm at north east ${this.direction}");
    } else {
      print('No direction');
    }
  }

  void showMyNameXTimes (int x) {
    for(int i=0; i<x; i++ ) {
      print(name);
    }
  }

}

class Apple {
  int x = -140;
  int y = 46;
  String name = 'Apple';
  bool isShow = true;
  int size = 100;
  int direction = 279;

  void sayHello() {
    print('Hello');
  }

  void sayMyName() {
    print(this.name);
  }

  void sayMyLocation() {
    print("I'm at position $x and $y");
  }

  void showMySize() {
    print('My size is $size');
  }

  void showMyDirection() {
    print('My direction is $direction');
  }

  void move(int x) {
    this.x += x;
  }

  void changeYby(int y) {
    this.y += y;
  }

  void getDirection() {
    if (0 <= this.direction && this.direction <= 90) {
      print("I'm at south east ${this.direction}");
    } else if (91 <= this.direction && this.direction <= 180) {
      print("I'm at south west ${this.direction}");
    } else if (181 <= this.direction && this.direction <= 270) {
      print("I'm at north west ${this.direction}");
    } else if (271 <= this.direction && this.direction <= 360) {
      print("I'm at north east ${this.direction}");
    } else {
      print('No direction');
    }
  }

  void showMyNameXTimes (int x) {
    for(int i=0; i<x; i++ ) {
      print(name);
    }
  }
}

void main() {
  print('Day 07');
  print(calculate());
  final hool = Hool();
  print(hool);
  hool.sayHello();
  hool.sayMyName();
  hool.sayMyLocation();
  hool.showMySize();
  hool.showMyDirection();
  hool.goToXandY(10, 50);
  hool.sayMyLocation();
  hool.move(100);
  hool.sayMyLocation();
  hool.move(-40);
  hool.sayMyLocation();
  hool.changeYby(40);
  hool.sayMyLocation();
  hool.changeYby(-40);
  hool.sayMyLocation();
  hool.getDirection();
  hool.showMyNameXTimes(10);
  final sav = Sav();
  print(sav);
  sav.sayHello();
  sav.sayMyName();
  sav.sayMyLocation();
  sav.showMySize();
  sav.showMyDirection();
  sav.move(40);
  sav.sayMyLocation();
  sav.move(-30);
  sav.sayMyLocation();
  sav.changeYby(-100);
  sav.sayMyLocation();
  sav.changeYby(50);
  sav.sayMyLocation();
  sav.getDirection();
  sav.showMyNameXTimes(7);
  final apple = Apple();
  print(apple);
  apple.sayHello();
  apple.sayMyName();
  apple.sayMyLocation();
  apple.showMySize();
  apple.showMyDirection();
  apple.move(-50);
  apple.sayMyLocation();
  apple.move(40);
  apple.sayMyLocation();
  apple.changeYby(50);
  apple.sayMyLocation();
  apple.changeYby(-40);
  apple.sayMyLocation();
  apple.getDirection();
  apple.showMyNameXTimes(18);
}
