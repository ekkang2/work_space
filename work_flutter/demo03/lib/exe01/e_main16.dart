class Animal {
  late final String name;

  Animal(String name) {
    print('${name} 동물 생성자 호출()');
    this.name = name;
  }
}

class Dog extends Animal {
  Dog(String name) : super(name) {
    print('${super.name} 개 생성자 호출()');
  }

  void bark() {
    print('멍멍!');
  }
}

void main() {
  Animal animal = Animal('동물');
  print(animal.name);
  Dog dog = Dog('개1');
  print(dog.name);
  dog.bark();
  Animal dog2 = Dog('개2'); // 부모객체 = 자식객체
  print(dog2.name);
  (dog2 as Dog).bark();
}
