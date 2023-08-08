import 'dart:io';

//9-Create a mixin called Auditable that adds auditing functionality to a class.
// The mixin should provide methods like recordCreate(), recordUpdate(), and recordDelete()
// that log audit information whenever an object is created, updated, or deleted.

void main(){
  user user1 = user("Mohamed");
  print(user1.records);
  user1.recordCreate();
  user1.recordCreate();
  print(user1.records);

}

mixin Auditable{
  int records = 0;

  recordCreate(){
    print("A new record has been created");
    records++;
  }

  recordUpdate(){
    print("A Record has been updated");
  }

  recordDelete(){
    if(records>0){
      print("A record has been deleted");
      records--;
    }
    else{
      print("There is no record to delete");
    }
  }
}

class user with Auditable{
  String ? name;
  user(this.name);
}