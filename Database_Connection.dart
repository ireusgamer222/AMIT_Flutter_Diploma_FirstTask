import 'dart:io';

import 'Auditable_Mixin.dart';
//5-Database Connection: Implement a DatabaseConnection interface that defines methods
// like connect(), disconnect(), query(), and execute(). Create concrete classes like
// MySQLConnection and PostgreSQLConnection that implement the DatabaseConnection
// interface. Each class should provide its own implementation for the interface methods.

void main(){

}


abstract class DataBaseconnection{
  coonect();
  disconnect();
  query();
  execute();
}

class MySQLConnection implements DataBaseconnection{
  String? User;
  MySQLConnection(this.User);
  @override
  coonect() {
    print("Connecting $User to the database");
  }

  @override
  disconnect() {
    // TODO: implement disconnect
    print("Disconnecting $User from the database");
  }

  @override
  query() {
    // TODO: implement query
    print("$User is requesting for data");
  }

  @override
  execute() {
    // TODO: implement execute
    print("$User is executing a command in the database");
  }

}