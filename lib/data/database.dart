import 'package:hive/hive.dart';

class ToDoDatabase {
  List todoList = [];

  final myBox = Hive.box('mybox');

  void initialData() {
    todoList = [
      ['Do Exercise', false],
      ['Watch Tutorial', false],
    ];
  }

  void loadData() {
    todoList = myBox.get('ToDoList');
  }

  void updateDatebase() {
    myBox.put('ToDoList', todoList);
  }
}
