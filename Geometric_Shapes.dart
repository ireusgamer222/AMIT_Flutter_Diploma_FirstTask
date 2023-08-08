import 'dart:io';

//Although you mentioned excluding shapes, I'll include a question
// related to advanced inheritance. Create a base class called Shape with properties and
// methods related to geometric shapes. Then, create subclasses like Rectangle, Circle, and
// Triangle that inherit from the Shape class. Implement methods to calculate area and
// perimeter for each shape, and override them in the subclasses with specific formulas.

void main(){
  Circle circle1 = Circle(5);
  print(circle1.CalculatePerimter());
  print(circle1.CalculuteArea());

}

class Shape{
  double ? Length;
  double CalculuteArea(){
    return 0;
  }
  double CalculatePerimter(){
    return 0;
  }

}

class Circle extends Shape{
  Circle(double radius){
    Length = radius;
  }

  double CalculuteArea(){
    return 3.14 * Length! * Length!;
  }

  @override
  double CalculatePerimter(){
    return 3.14 * 2 * Length!;
  }
}

class Square extends Shape{
  Square(double length){
    Length = length;
  }

  double CalculuteArea(){
    return Length! * Length!;
  }

  @override
  double CalculatePerimter(){
    return 4* Length!;
  }
}

class Triangle extends Shape{
  Circle(double length){
    Length = length;
  }

  double CalculuteArea(){
    return Length! * Length! * 0.433;
  }

  @override
  double CalculatePerimter(){
    return 3 * Length!;
  }
}