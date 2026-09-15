
abstract class Shape{
  void calculateArea();
}

class CircleArea implements Shape{
  double radius;
  CircleArea(this.radius);

  @override
  void calculateArea() {
    double area = 3.1416 * radius*radius;
    print('Circle Area is:$area');
  }
}

class SquareArea implements Shape{
  double value;
  SquareArea(this.value);

  @override
  void calculateArea() {
    double area = value * value;
    print('Square Area is: $area');
  }
}

void main(){
  print('\n--------------Circle Area -----------');
  CircleArea circle = CircleArea(5.0);
  circle.calculateArea();
  print('-------Square Area----------');
  SquareArea square = SquareArea(12);
  square.calculateArea();

}