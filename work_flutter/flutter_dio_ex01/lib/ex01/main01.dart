import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: HomePage(),
      )),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 통신을 담당하는 클라이언트 객체를 가져옴
  Dio _dio = Dio();
  Comment? _comment;

  @override
  void initState() {
    super.initState();
    // 객체 실행시 한번 호출 메서드
    _fetchComment();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _comment == null
          ? CircularProgressIndicator()
          : Column(
              children: [
                Text('postId : ${_comment!.postId}'),
                Text('id : ${_comment!.id}'),
                Text('name : ${_comment!.name}'),
                Text('email : ${_comment!.email}'),
                Text('body : ${_comment!.body}'),
              ],
            ),
    );
  }

  // 통신을 담당하는 메서드 만들기
  _fetchComment() async {
    try {
      Response response = await _dio
          .get('https://jsonplaceholder.typicode.com/posts/1/comments');
      // 멤버 변수 값 담음
      _comment = Comment.fromJson(response.data[0]);
      setState(() {});
    } catch (e) {
      print('실행 시점 예외 발생');
      print(e.toString());
    }
  }
}

class Comment {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      this.body});

  // dart 생성자 -> 명명된 생성자
  Comment.fromJson(Map<String, dynamic> json)
      : postId = json['postId'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];

  @override
  String toString() {
    return 'Comment{postId: $postId, id: $id, name: $name, email: $email, body: $body}';
  }
}
