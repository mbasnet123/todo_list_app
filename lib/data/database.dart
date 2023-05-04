import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/src/services/platform_channel.dart';

class ToDoDataBase {

  List toDoList = [];
  final _myBox = Hive.box('myBox');

  // run this method if this is the 1st time opening this app
  void createInitialData(){
    toDoList = [
      ["Make bed", false],
      ["cook food", false],
    ];
  }

   // load the data from database
    void loadData(){
      toDoList = _myBox.get("TODOLIST");
    }

    // update the database
    void updateDataBase(){
      _myBox.put("TODOLIST", toDoList);
    }
}