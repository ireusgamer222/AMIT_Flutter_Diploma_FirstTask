import 'dart:io';

// 8-Define an AccessLevel enum that represents different levels
// of access, such as Guest, User, Moderator, and Admin. Create a class called User that
// encapsulates properties like name and accessLevel, and implement methods that perform
// actions based on the user's access level. use(functions and switch cases)

void main(){
  print("Please enter which access level are you by the number of the index in the following list");
  print(AccessLevel.values);
  int x = int.parse(stdin.readLineSync()!);

  print("Please enter your name: ");
  String name1 = stdin.readLineSync()!;

  User user1 = User();
  user1.setName(name1);


  user1.setAccessLevel(AccessLevel.values[x].toString());
  user1.Job();


}

enum AccessLevel{
  Guest, User,Moderator,Admin
}

class User{
  String? _name;
  String? _AccessLevel;

  void setName(String name1){
    this._name = name1;
  }

  void GetName(){
    print(_name);
  }

  void setAccessLevel(String name1){
    _AccessLevel = name1;
  }

  void GetAccLevel(){
    print(_AccessLevel);
  }

  void Job(){
    switch(this._AccessLevel){
      case "AccessLevel.User":
        print("User can use the app and enjoy its service");
        break;
      case "AccessLevel.Moderator":
        print("Moderator watches the app and supports the user if he/she needs any kind of help");
        break;
      case "AccessLevel.Guest":
        print("The guest is someone who watches the app without the ability to do anything");
        break;
      case"AccessLevel.Admin":
        print("The admin is the one who develops the app and make descisions");
        break;
    }
  }

}