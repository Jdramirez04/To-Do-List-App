import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{

  List toDoList = [];
  //reference the box
  final _myBox = Hive.box('myBox');

  //run this method first time opening this app
  void createInitialData(){
    toDoList = [
      ["make Tutoria", false],
      ["Do Exercise", false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }
  //update the database
  void updataDataBase(){
    _myBox.put("TODOLIST", toDoList);

  }
}