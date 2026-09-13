abstract class Shape {
  void calculateArea(); // Abstract method no body

  void PrintInfo() {
    // We can use a regular method in an abstact class
    print('This is a geometric shape');
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void calculateArea() {
    double area = 3.1416 * radius * radius;
    print('Circle Area: $area');
  }
}

class Reactangle extends Shape {
  double width;
  double height;

  Reactangle(this.width, this.height);

  @override
  void calculateArea() {
    double area = width * height;
    print('Rectangle Area is: $area');
  }
}

void main() {
  Shape circleArea = Circle(5.25);
  Shape rectanglearea = Reactangle(12.5, 18.5);

  circleArea.PrintInfo();

  circleArea.calculateArea();

  print('-------------------------');

  rectanglearea.calculateArea();
}
