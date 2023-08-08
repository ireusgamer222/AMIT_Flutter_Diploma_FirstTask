import 'dart:io';

//7-Create an abstract class called Logger that defines methods like
// logInfo(), logWarning(), and logError(). Implement concrete classes like ConsoleLogger and
// FileLogger that extend the Logger class and provide different implementations for logging
// messages.

void main(){




}

abstract class Logger{
  void LogInfo(String message);
  void LogWarning();
  void LogError();
}
class ConsoleLogger extends Logger{
  @override
  void LogInfo(String message) {
    print(message);
  }

  @override
  void LogWarning() {
    print("Warning the console can't take integer in a string datatype");
  }

  @override
  void LogError() {
    print("The console crashed due to a runtime error");
  }
}

class FileLogger extends Logger{
  @override
  void LogInfo(String message) {
    print("The text has been added to the file");
  }

  @override
  void LogWarning() {
    print("Warning the file can't take integer in a string datatype");
  }

  @override
  void LogError() {
    print("The file crashed due to a overuse of memory storage");
  }
}