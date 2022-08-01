import '../models/todo.dart';

abstract class Repository {
  Future<List<Todo>> getTodoList();
  Future<String> putCompleted(Todo todo);
  Future<String> deleteTodo(Todo todo);
  Future<String> postTodo(Todo todo);
  Future<String> patchCompleted(Todo todo);
}
