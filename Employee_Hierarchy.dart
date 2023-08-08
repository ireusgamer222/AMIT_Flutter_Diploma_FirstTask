import 'dart:io';

//2-Design an employee hierarchy using inheritance. Create a base class
// called Employee with properties like name, age, and salary. Then, create subclasses like
// Manager, Developer, and Designer that inherit from the Employee class. Implement specific
// methods or properties for each subclass that represent their roles or responsibilities.

void main(){


}

class Employee{
  String? name;
  int? age;
  double? salary;
  static String company = "MAGIC";
}

class Manager extends Employee{
  int? timeofshift;

  Manager(String name1,int age1,double salary1,this.timeofshift){
    super.name = name1;
    super.age = age1;
    super.salary = salary1;
  }

  DisplayInfo(){
    print("The name of the manager is: $name");
    print("The age of the Manager is: $age");
    print("The salary of the Manager is: $salary");
    print("The manager works in the company $timeofshift hours daily");
  }

  void DisplayJobInfo(){
    print("The manager does some manages in the company and make things work smoothly");
  }

}


class Designer extends Employee{
  int? timeofshift;

  Designer(String name1,int age1,double salary1,this.timeofshift){
    super.name = name1;
    super.age = age1;
    super.salary = salary1;
  }

  DisplayInfo(){
    print("The name of the manager is: $name");
    print("The age of the Manager is: $age");
    print("The salary of the Manager is: $salary");
    print("The manager works in the company $timeofshift hours daily");
  }

  void DisplayJobInfo(){
    print("The designer designs the products of the company and design the advertises so the products will attract the customers");
  }

}

class Developer extends Employee{
  int? timeofshift;

  Developer(String name1,int age1,double salary1,this.timeofshift){
    super.name = name1;
    super.age = age1;
    super.salary = salary1;
  }

  DisplayInfo(){
    print("The name of the manager is: $name");
    print("The age of the Manager is: $age");
    print("The salary of the Manager is: $salary");
    print("The manager works in the company $timeofshift hours daily");
  }

  void DisplayJobInfo(){
    print("The developer decides and enhance the products of the company and design the come up with new ideas");
  }

}