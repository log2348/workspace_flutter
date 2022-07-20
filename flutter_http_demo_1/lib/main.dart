import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_demo_1/album.dart';
import 'package:http/http.dart' as http;
// 라이브러리 (같은 이름의 객체가 존재 가능하다.)

void main() {
  runApp(const MyApp());
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
      title: 'http 연습',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Album> futureAlbum;

  @override
  void initState() {
    futureAlbum = fetchAlbum();
    /*
    fetchAlbum().then((data) => {
          print("id : ${data.id}"),
          print("userId : ${data.userId}"),
          print("title : ${data.title}"),
        });
        */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("http lib ex"),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum, // future type 명시
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<int> futureNumber() async {
  return Future.delayed(
    const Duration(seconds: 3),
    () {
      return 100;
    },
  );
}

// String != String?
Future<Album> fetchAlbum() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/albums/2ewrqrwfds");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load to album");
  }

  print(response.runtimeType);
  print(response.statusCode);
}
