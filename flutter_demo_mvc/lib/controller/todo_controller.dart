import 'package:flutter_demo_mvc/models/todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';

class TodoController {
  // 다형성 활용
  final Repository _repository;

  TodoController(this._repository);

  // get todo list
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }

  Future<String> deleteTodo(Todo todo) async {
    return _repository.deleteTodo(todo);
  }

  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }

  Future<String> postTodo(Todo todo) async {
    return _repository.postTodo(todo);
  }

  Future<String> putTodo(Todo todo) async {
    return _repository.putCompleted(todo);
  }
}
