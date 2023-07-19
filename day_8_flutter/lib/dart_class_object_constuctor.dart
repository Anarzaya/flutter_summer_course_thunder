class Body {
  int numberOfBody = 0;
  Body({required int numberOfBody}) {
    this.numberOfBody = numberOfBody;
  }
}

class Head {
  int numberOfHead = 0;
  Head({required int numberOfHead}) {
    this.numberOfHead = numberOfHead;
  }
}

class Human {
  Body humanBody = Body(numberOfBody: 1);
  Head humanHead = Head(numberOfHead: 1);

  Human({required Body humanBody, required Head humanHead}) {
    this.humanBody = humanBody;
    this.humanHead = humanHead;
  }

  void showInfo() {
    print('I am Khangai. ');
  }
}

class Door {
  int numberofDoors = 0;
  Door({required int numberofDoors}) {
    this.numberofDoors = numberofDoors;
  }
}

class Floor {
  int numberOfFloors = 0;
  Floor({required int numberofFloors}) {
    this.numberOfFloors = numberofFloors;
  }
}

class Building {
  String name= '';
  Floor floors = Floor(numberofFloors: 3);
  Door doors  = Door(numberofDoors: 2);

  Building({required Floor floors, required Door doors, required String name}) {
    this.doors = doors;
    this.floors = floors;
    this.name = name;
  }

  void buildinginfo() {
    print('${this.name} building has ${this.doors.numberofDoors} doors and ${this.floors.numberOfFloors} floors');
  }

}
void main() {
  final Body khangaiBody = Body(numberOfBody: 1);
  final Head khangaiHead = Head(numberOfHead: 1);
  final Human khangai = Human(humanBody: khangaiBody, humanHead: khangaiHead);
  khangai.showInfo();
  final Door buildingdoor = Door(numberofDoors: 3);
  final Floor buildingfloor = Floor(numberofFloors: 2);
  final Building building = Building(floors: buildingfloor, doors: buildingdoor, name: 'Ajnai 101');
  building.buildinginfo();
}
