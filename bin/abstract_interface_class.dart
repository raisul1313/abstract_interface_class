abstract class Vehicles {
  void timeSaving(); //abstract method with no body
  void canMoveFirst() {
    //abstract method with body
    print("All Vehicles are not car ");
  }
}

abstract class TotalWheel {
  //abstract method with no body
  void numberOfWheel();
}

class Car implements Vehicles {
  //implements
  late String name, color;
  late int model;

  //constructor
  Car(this.name, this.color, this.model);

  @override
  void canMoveFirst() {
    //override method from abstract class
    print("$name car can move first");
  }

  @override
  void timeSaving() {
    //override method from abstract class
    print("Though $name can move first, it save our time");
  }

  @override
  String toString() => "$name $color $model"; //to string
}

class Bugati extends Car implements TotalWheel {
  Bugati(String name, String color, int model) : super(name, color, model);

  @override
  void numberOfWheel() {
    print("$name, color: $color and $model number have four wheel");
  }
}

class MercedesBus extends Car implements TotalWheel {
  MercedesBus(String name, String color, int model) : super(name, color, model);

  @override
  void numberOfWheel() {
    print("$name, color: $color and $model number have eight wheel");
  }
}

class Tractor extends Car implements TotalWheel {
  Tractor(String name, String color, int model) : super(name, color, model);

  @override
  void numberOfWheel() {
    print(
        "$name, color: $color and $model number have three wheel, but its not a car");
  }

  @override
  void canMoveFirst() {         //override again with the help of extend CAR class
    print("$name can't move first");
  }
  @override
  void timeSaving() {         //override again with the help of extend CAR class
    print("Though $name can move slow, it can't save our time");
  }
}

void main() {
  var car = Car("name", "color", 0);
  var bugati = Bugati("Fancy Bugati", "Black", 963);
  var mercedesBus = MercedesBus("Mercedes", "Yellow", 413);
  var tractor = Tractor("Tesla Tractor", "Red", 812);

  print(car);
  print("\n");

  print(bugati);
  bugati.canMoveFirst();
  bugati.timeSaving();
  bugati.numberOfWheel();
  print("\n");

  print(mercedesBus);
  mercedesBus.canMoveFirst();
  mercedesBus.timeSaving();
  mercedesBus.numberOfWheel();
  print("\n");

  print(tractor);
  tractor.canMoveFirst();
  tractor.timeSaving();
  tractor.numberOfWheel();
  print("\n");


}
