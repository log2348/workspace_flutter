import '../models/todo.dart';

abstract class Repository {
  Future<List<Todo>> getTodoList();
  Future<Todo> putCompleted(Todo todo);
  Future<String> deleteTodo(Todo todo);
  Future<Todo> postTodo(Todo todo);
  Future<String> patchCompleted(Todo todo);
}
