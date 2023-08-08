import'dart:io';

//1-Create a class called Vehicle with properties like brand, model, and year.
// Then,
// create subclasses like Car, Motorcycle,
// and Truck that inherit from the Vehicle class.
//  Implement specific methods or properties for each subclass that differentiate them from
// each other.

void main() {

  Car car1 = Car(brand1: "fff222",model1: "4124133",year1: 2006,name: "BMW",sportcar: true,seats: 2);
  car1.DisplayInfo();

}

class Vehicle{
  String? brand;
  String? model;
  int? year;
}

class Car extends Vehicle{
  static int wheels = 4;
  int? seats;
  bool? sportcar;
  String? name;

  Car({String? brand1,String? model1,int? year1,this.seats,this.sportcar,this.name}){
    super.brand = brand1;
    super.model = model1;
    super.year = year1;
  }

  void DisplayInfo(){
    print("The name of the car is: $name");
    print("The brand of the car is: ${super.brand}");
    print("The model of the car is: ${super.model}");
    print("The year of the car is ${super.year}");
    print("The number of wheels of the car is: $wheels");
    print("The number of seats of the car is: $seats");
    print("Is the car condsidered as a sport car? $sportcar");

  }

}

class Motorcycle extends Vehicle{
  static int wheels = 2;
  static int seats = 2;
  bool? MountainBike;
  String? name;

  Motorcycle({String? brand1,String? model1,int? year1,this.MountainBike,this.name}){
    super.brand = brand1;
    super.model = model1;
    super.year = year1;
  }

  void DisplayInfo(){
    print("The name of the car is: $name");
    print("The brand of the car is: ${super.brand}");
    print("The model of the car is: ${super.model}");
    print("The year of the car is ${super.year}");
    print("The number of wheels of the car is: $wheels");
    print("The number of seats of the car is: $seats");
    print("Is the car condsidered as a Mountain Bike? $MountainBike");

  }

}

class Truck extends Vehicle{
  int? wheels;
  int? seats;
  String? name;

  Truck({String? brand1,String? model1,int? year1,this.wheels,this.seats,this.name}){
    super.brand = brand1;
    super.model = model1;
    super.year = year1;
  }

  void DisplayInfo(){
    print("The name of the car is: $name");
    print("The brand of the car is: ${super.brand}");
    print("The model of the car is: ${super.model}");
    print("The year of the car is ${super.year}");
    print("The number of wheels of the car is: $wheels");
    print("The number of seats of the car is: $seats");;

  }
}