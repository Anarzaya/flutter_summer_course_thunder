class Shape {
  int length = 0;
  int width = 0;
  String name = "";
  Shape({required int length, required int width, required String name}) {
    this.name = name;
    this.width = width;
    this. length = length;
  }

  void showinfo () {
    print('My info is ${this.name} with ${this.length} and ${this.width}');
  }
}

class Dinosaur {
  String name = "";
  String color = "";
  int weight = 0;
  Dinosaur({required String name, required String color, required int weight}) {
    this.name = name;
    this.color = color;
    this.weight = weight;
  }
  int shoutSize () {
    return this.weight;
  }
   void shoutName () {
    print('My name is ${this.name}');
   }
}


class Family {
  Human father = Human(name: 'Bat', age: 30, gender: 'er');
  Human mother = Human(name: 'Tuya', age: 30, gender: 'em');
  Human brother = Human(name: 'Bold', age: 5, gender: 'er');
  Human sister = Human(name: 'Nomin', age: 7, gender: 'em');

  Family({required Human father, required Human mother, required Human brother, required Human sister}) {
    this.father = father;
    this.mother = mother;
    this.brother = brother;
    this.sister = sister;
  }

  void sayFamilyMember () {
    print("The family has 4 members, my father's name is ${this.father}, my mother's name is ${this.mother}, my brother's name is ${this.brother}, my sister's name is ${this.sister}.");
  }
}
class Human {
  String name = '';
  int age = 0;
  String gender = '';
  
  Human({required String name, required int age, required String gender}) {
    this.name = name;
    this.age= age;
    this.gender = gender;
  }
  
  String getName () {
    return this.name;
  }
}

class Khan {
  String name = "";
  double height = 0;
  int age = 0;
  int jil = 0;
  
  Khan({required String name, required double height, required int age, required int jil}) {
    this.name = name;
    this.height = height;
    this.age = age;
    this.jil = jil;
  }
  
  void showInfo () {
    print('Minii neriig ${this.name} gedeg. Bi ${this.age} nastai. Minii biyiin undur ${this.height}. Bi ${this.jil} jil haan tur barisan');
  }
}

class MongolianEmpire {
  String name = '';
  int jil = 0;
  Khan haan = Khan(name: '', height: 0, age: 0, jil: 0);

  MongolianEmpire({required String name, required int jil, required Khan haan}) {
    this.name = name;
    this.jil = jil;
    this.haan = haan;
  }
  void showHistory () {
    print('Bi mongoliin ${this.name} hanlig buguud ${this.jil} jil orshin togtnoson. Namaig ${this.haan.name} haan zahirch baisan');
  }
} 
void main() {
  final Shape rectangle = Shape(length: 14, width: 20, name: 'Rectangle');
  final Shape quadrat = Shape(length: 20, width: 15, name: 'Triangle');
  final Shape triangle = Shape(length: 20, width: 20, name: 'Triangle');
  rectangle.showinfo();
  quadrat.showinfo();
  triangle.showinfo();
  final Dinosaur dino = Dinosaur(name: 'Tyrannosaurus', color: 'pink', weight: 30 );
  dino.shoutName();
  print(dino.shoutSize());
  final Human aav = Human(name: 'Bat', age: 30, gender: 'er');
  final Human eej = Human(name: 'Tuya', age: 30, gender: 'em');
  final Human ah = Human(name: 'Bold', age: 10, gender: 'er');
  final Human egch = Human(name: 'Nomin', age: 8, gender: 'em');
  final Family family = Family(father: aav, mother: eej, brother: ah, sister: egch);
  print(aav.getName());
  print(eej.getName());
  print(ah.getName());
  print(egch.getName());
  final Khan haan = Khan(name: 'Chingis', height: 1.76, age: 40, jil: 17);
  final MongolianEmpire empire =  MongolianEmpire(name: 'Hamag Mongol', jil: 70, haan: haan);
  empire.showHistory();
}
