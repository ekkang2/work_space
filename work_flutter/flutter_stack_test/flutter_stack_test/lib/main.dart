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
          alignment: Alignment.bottomRight,
          children: [
            // 작성 순서
            Container(
              width: 200,
              height: 200,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.lightGreen,
            )
          ],
        ),
      )),
    );
  }
}
