class Wheel {
  int numberOfWheels = 0;
  Wheel({required int numberOfWheels}) {
    this.numberOfWheels = numberOfWheels;
  }
  void showInfo() {
    print('This car has ${this.numberOfWheels}');
  }
}

class Engine {
  int numberOfEngine = 0;
  Engine({required int numberOfEngine}) {
    this.numberOfEngine = numberOfEngine;
  }
  void showInfo() {
    print('This car has ${this.numberOfEngine}');
  }
}

class CarBody {
  int numberOfBody = 0;
  CarBody({required int numberOfBody}) {
    this.numberOfBody = numberOfBody;
  }
  void showInfo() {
    print('This car has ${this.numberOfBody}');
  }
}

class Car {
  String name = '';
  Wheel carwheel = Wheel(numberOfWheels: 4);
  Engine carengine = Engine(numberOfEngine: 2);
  CarBody carbody = CarBody(numberOfBody: 1);
  Car({ required Wheel carwheel, required Engine carengine, required CarBody carbody, required String name}) {
    this.name = name;
    this.carwheel = carwheel;
    this.carbody = carbody;
    this.carengine = carengine;
  }

  void.showInfo () {
    print()
  }
}

void main() {
  final
}
