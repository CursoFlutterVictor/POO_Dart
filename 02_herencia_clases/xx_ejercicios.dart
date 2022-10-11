// Ejercicio:
// https://medium.com/comunidad-flutter/dart-qu%C3%A9-son-los-mixins-5f2ab880a4ce

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Walk {
  void walk() {
    print("Walking...");
  }
}

abstract class Swim {
  void swim() {
    print("Swimming...");
  }
}

abstract class Fly {
  void fly() {
    print("Flying...");
  }
}

class Dolphin extends Animal with Swim {}

class Bat extends Animal with Walk, Fly {}

void main() {
  Dolphin d = new Dolphin();
  d.swim();

  Bat b = new Bat();
  b.fly();
  b.walk();
}
