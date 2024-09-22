void main() {
  // class and inheritance And Mixin
  var carOne = new Car();
  Car carTwo = Car();

  carTwo.brand = 'Ferrari';
  carTwo.color = 'skyBlue';

  print(carTwo.color);
  print(carTwo.brand!.length);

  carTwo.start();

  carTwo.shows();

  carOne.plateNumber = '\'MIMI100\'';
  carOne.showNumber();

  //Constructor
  initializer personOne = initializer(
    'David',
    'Bale',
    health: true,
  );

  print('${personOne.budget}\n${personOne.firstName}');

  // const constructor is better in terms of speed of programming, it is more efficient.
  const box = Box(height: 512, width: 512);
  print(box.height);
  print(box.width);

  // Encapsulation
  Bicycle b1 = new Bicycle();
  b1.pedal = 1200;

  print(b1.pedal);

  Bicycle b2 = new Bicycle();
  b2.pedal = 100;

  print(b2.pedal);
  b2._gear(); // just in current file - private functions/ method

  Chicken c = Chicken();
  Dog d = Dog();
  Cow k = Cow();

  playSound(c);
  playSound(d);
  playSound(k);
} // End Of Main()

mixin licenseNumber {
  String? plateNumber;

  void showNumber() {
    print(plateNumber);
  }
}

class Vehicle with licenseNumber {
  // Inheritance
  String? brand;
  String? color;
  int? speed;

  void shows() {
    print(this.brand);
    print(this.color);
    print(this.speed);
  }

  void start() {
    print('$brand is starting... and $speed is accelerating');
  }

  void stop() {
    print('$brand is stopping... and $speed is decreasing');
  }
}

class Car extends Vehicle with licenseNumber {
  // polymorphism : it has same things with father class but has different behavior as well. ==> override and new constructor.
  @override
  void start() {
    super
        .start(); // we can do not write super, and just override new things. super is means go and read from father-class.
    print('car is starting...');
  }
} // Inherited from vehicle, it is child

class AirPlain extends Vehicle
    with licenseNumber {} // Inherited from vehicle, it is child

class initializer {
  String? firstName;
  String? lastName;
  int? budget;
  bool? health;

  // constructor
  initializer(this.firstName, this.lastName, {required this.health})
      : budget =
            1000; // named required and positional and optional and default value and initializer List

  void eat() {
    print('$firstName $lastName is eating...');
  }
}

class Box {
  final int? height;
  final int? width;

  const Box({required this.height, required this.width});
}

// Encapsulation (private, set, get)
class Bicycle {
  int? _pedal; // private

  // int? get pedal {
  //   return _pedal;
  // }
  int? get pedal => _pedal;

  void set pedal(int? pedal) {
    if (pedal! < 1000) {
      this._pedal = pedal;
    } else {
      _pedal = 0;
      print('this is not good set of number!!!');
    }
  }

  // We can make private a function/ method in a class for a file.
  void _gear() {
    print('it has more gears');
  }
}

// abstract
// why? because it forces us to override the properties and functions. it is a interface. it is just total ideal and an abstract for other logical objects.

abstract class Employee {
  int? id;
  String? name;

  void enter() {
    print('entering...'.toUpperCase());
  }

  void exit() {
    print('exiting...'.toLowerCase());
  }

  void paySalary(); //if it is not an abstract ==> error:
  // 'paySalary' must have a method body because 'Employee' isn't abstract. Try making 'Employee' abstract, or adding a body to 'paySalary'. we can not create objects from abstract classes.
}

class CEO extends Employee {
  @override
  void paySalary() {
    print('it get the highest holdShare!');
  }
}

// if we create an extends, is is just inheritance and we should override the abstract ot empty properties, but when we implements, we should override all interface/ abstract class.

class Developer implements Employee {
  @override
  int? id;

  @override
  String? name;

  @override
  void enter() {
    print('developer entering');
  }

  @override
  void exit() {
    print('developer exiting');
  }

  @override
  void paySalary() {
    print('get salary with extra 10% pre-project');
  }
}

abstract class Animal {
  String? name;
  int? wight;
  String? color;
  void eat() {}
  void sleep() {}
  void makeSound();
}

class Chicken extends Animal {
  @override
  void makeSound() {
    print('making chicken sound...');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('making dog sound...');
  }
}

class Cow extends Animal {
  @override
  void makeSound() {
    print('making cow sound..');
  }
}

void playSound(Animal animal) {
  animal.makeSound();
}
