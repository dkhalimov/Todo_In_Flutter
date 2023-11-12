import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List ToDoList = [];
    
   final _myBox = Hive.box('mybox');

  void createInitialData() {
    ToDoList = [
      ["Make Todo", false],
      ["Do exercise", false],
    ];
  }

  void loadData() {
    ToDoList = _myBox.get("ToDo List");
  }

  void updateDataBase() {
    _myBox.put("ToDoList", ToDoList);
  }
}
