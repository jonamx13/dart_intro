abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flying {
  void fly() => print('I am flying!!!');
}

mixin Walker {
  void walk() => print('I am walking!!!');
}

mixin Swimmer {
  void swim() => print('I am swimming!!!');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Flying, Walker {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flying {}

class Duck extends Bird with Walker, Swimmer, Flying {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flying {}

void main() {
  final flipper = Dolphin();
  flipper.swim();

  final batman = Bat();
  batman.walk();
  batman.fly();

  final namor = Duck();
  namor.walk();
  namor.fly();
  namor.swim();
}
