import 'dart:convert';

import 'package:flutter_demo_mvc/models/todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataURL = "https://jsonplaceholder.typicode.com";

  @override
  Future<String> deleteTodo(Todo todo) async {
    var url = Uri.parse("$dataURL/todos/${todo.id}");
    http.delete(url);
    return "ok";
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];

    var url = Uri.parse("$dataURL/todos");
    var response = await http.get(url);

    print("status code: ${response.statusCode}");
    print("response body: ${response.body}");

    var body = json.decode(response.body);
    print("decode body: ${body}");

    // 파싱...
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }

    return todoList;
  }

  // PATCH
  // REST API 중 GET, DELETE (body x)
  // POST, PUT, PATCH (body o)
  @override
  Future<String> patchCompleted(Todo todo) async {
    var uri = Uri.parse("$dataURL/todos/${todo.id}");
    String resData = '';
    await http.patch(
      uri,
      headers: {'Content-type': 'application/json; charset=UTF-8'},
      body: {
        'completed': (todo.completed!).toString(),
      },
    ).then((response) {
      print("responseBody : ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<Todo> postTodo(Todo todo) async {
    Todo requestTodo = new Todo();

    var uri = Uri.parse("$dataURL/todos/posts");
    http.post(uri, headers: {
      'Content-type': 'application/json; charset=UTF-8'
    }, body: {
      'id': (todo.id!).toString(),
      'userId': (todo.userId!).toString(),
      'completed': (todo.completed!).toString(),
      'title': (todo.title!).toString()
    }).then((response) {
      requestTodo = Todo.fromJson(json.decode(response.body));
    });

    return requestTodo;
  }

  @override
  Future<Todo> putCompleted(Todo todo) async {
    Todo requestTodo;

    var url = Uri.parse("$dataURL/todos/${todo.id}");
    var response = await http.put(url).then((response) {
      return json.decode(response.body);
    });

    var body = json.decode(response.body);
    requestTodo = Todo.fromJson(body);

    return requestTodo;
  }
}
