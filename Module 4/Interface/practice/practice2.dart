abstract class Animal{
  void makeSound();
}

class Dog implements Animal{
  @override
  void makeSound() {
    print('Ghew Ghew');
  }
}

class Cat implements Animal{
  @override
  void makeSound() {
    print('Mew Mew');
  }
}

void main(){
  Cat cat = Cat();
  cat.makeSound();
  Dog dog = Dog();
  dog.makeSound();
}