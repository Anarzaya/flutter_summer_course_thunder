class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
}

// class sprite with named parameter

class NamedSprite {
  int x = 0;
  int y = 0;

  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
}

class Animal {
  String name = '';
  String type = '';

  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }

  void makeNoise() {
    print('Animal Roaring');
  }
}

class Human{
  int age = 0;
  String name = '';
  double height = 0;
  Human({required int age, required String name, required double height}) {
    this.name = name;
    this.age = age;
    this.height = height;
  }

  void showMeasure() {
    print('My name is ${this.name} and I am ${this.age} years old and I am ${this.height} tall');
}
}

void main() {
  final Sprite catSprite = Sprite(10, 20);
  final NamedSprite namedDogSprite = NamedSprite(x: 10, y: 20);
  final Animal dog= Animal(name: 'Nohoi', type: 'small');
  dog.makeNoise();
  final Human hun = Human(age: 18, name: 'Temuujin', height: 1.68);
  hun.showMeasure();
}