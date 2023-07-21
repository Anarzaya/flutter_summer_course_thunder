class Sprite {
  int x = 0;
  int y = 0;

  Sprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }

  void printInfo() {
    print('My name is Sprite');
    print('My location is ${this.x} and ${this.y}');
  }
}

class CatSprite extends Sprite {
  CatSprite({required super.x, required super.y});
}

class DogSprite extends Sprite {
  DogSprite({required super.x, required super.y});
}

class Animal {
  String name = '';
  Animal({required String name}) {
    this.name = name;
  }

  void makeNoise () {
    print('Animal roaring');
  }
}

class Pig extends Animal {
  Pig({required super.name});

  @override
  void makeNoise() {
    print('pig oank');
  }
}

class Muur extends Animal {
  Muur({required super.name});

  @override
  void makeNoise() {
    print('cat meow');
  }
}

class Horse extends Animal {
  Horse({required super.name});

  @override
  void makeNoise() {
    print('horse neigh');
  }
}



void main () {
  Sprite sprite = Sprite(x: 10, y: 20);
  sprite.printInfo();
  CatSprite cat = CatSprite(x: 40, y: 40);
  DogSprite dog = DogSprite(x: 40, y: 40);
  Pig pig = Pig(name: 'pig');
  pig.makeNoise();
  Muur muur = Muur(name: 'cat');
  muur.makeNoise();
  Horse horse = Horse(name: 'horse');
  horse.makeNoise();

}
