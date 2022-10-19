// Ejercicio:
// https://medium.com/comunidad-flutter/dart-qu%C3%A9-son-los-mixins-5f2ab880a4ce

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Walk {
  void walk() {
    print("Walking...");
  }
}

mixin Swim {
  void swim() {
    print("Swimming...");
  }
}

mixin Fly {
  void fly() {
    print("Flying...");
  }
}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Walk, Fly {}

class Cat extends Mammal with Walk {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Walk, Swim, Fly {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Swim, Fly {}

void main() {
  print("Dolphin:");
  Dolphin d = new Dolphin();
  d.swim();

  print("Bat:");
  Bat b = new Bat();
  b.fly();
  b.walk();
}
