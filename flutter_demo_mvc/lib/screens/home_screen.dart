import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_demo_mvc/controller/todo_controller.dart';
import 'package:flutter_demo_mvc/repository/todo_repository.dart';

import '../models/todo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todoController = TodoController(TodoRepository()); // DI (의존성 주입)

    return Scaffold(
      appBar: AppBar(
        title: Text("REST API EX"),
      ),
      body: FutureBuilder<List<Todo>>(
        future: todoController.fetchTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } // end of if

          if (snapshot.hasError) {
            return Center(
              child: Text("ERROR"),
            );
          }
          return buildBodyContent(snapshot, todoController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // POST 호출
          print('Post 선택됨');
          todoController.postTodo(new Todo()!).then((value) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: const Duration(milliseconds: 500),
                content: Text('Post 통신 성공')));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

SafeArea buildBodyContent(
    AsyncSnapshot<List<Todo>?> snapshot, TodoController todoController) {
  return SafeArea(
    child: ListView.separated(
        itemBuilder: (context, index) {
          var todo = snapshot.data?[index];
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 100.0,
            child: Row(
              children: [
                Expanded(
                  // Expanded - 부모의 남은 부분을 전부 채우는 식으로 화면에 나타남
                  flex: 1,
                  child: Text('${todo?.id}'),
                ),
                Expanded(
                  flex: 3,
                  child: Text('${todo?.title}'),
                ),
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          print('put 선택됨');
                          todoController.putTodo(todo!).then((value) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("수정 완료")));
                          });
                        },
                        child: buildCallContainer(
                          'put',
                          Color.fromARGB(255, 238, 152, 221),
                        ),
                      ),
                      SizedBox(width: 20),
                      InkWell(
                          onTap: () {
                            todoController
                                .updatePatchCompleted(todo!)
                                .then((value) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                duration: const Duration(milliseconds: 500),
                                content: Text("$value patch 통신 성공"),
                              ));
                            });
                          },
                          child: buildCallContainer(
                            'patch',
                            Color(0xFFF1BEE7),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                          onTap: () {
                            var response =
                                todoController.deleteTodo(todo!).then((value) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text('ok'),
                              ));
                            });
                          },
                          child: buildCallContainer(
                            'del',
                            Color.fromARGB(255, 255, 167, 237),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return Divider(
            thickness: 0.5,
            height: 0.5,
          );
        },
        itemCount: snapshot.data?.length ?? 0), // NullSafety
  );
}

Container buildCallContainer(String title, Color color) {
  return Container(
    width: 40.0,
    height: 40.0,
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.0)),
    child: Center(
      child: Text("${title}"),
    ),
  );
}
