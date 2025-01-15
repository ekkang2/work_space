import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Stack(
          // alignment: Alignment.bottomRight,
          // Stack 위젯안에 Positioned 위젯을 사용할 수 있다

          children: [
            // 작성 순서
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
            Positioned(
              bottom: 50,
              right: 50,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.lightGreen,
              ),
            )
          ],
        ),
      )),
    );
  }
}
