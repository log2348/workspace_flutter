import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_http_demo_1/comment.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comment 데이터 받아오기',
      home: TestPage(),
    );
  }
}

// PUT - 전체 수정
// FETCH - 부분 수정

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  late Future<Comment> futureComment;

  @override
  void initState() {
    futureComment = fetchComment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comment 데이터 받아오기'),
      ),
      body: Center(
        child: FutureBuilder<Comment>(
          future: futureComment,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.email);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<Comment> fetchComment() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/comments/2");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Comment.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("통신 실패");
  }
}
