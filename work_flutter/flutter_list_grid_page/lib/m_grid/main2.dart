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
      home: Scaffold(
        body: GridView.builder(
          // 방향을 지정한다.
          scrollDirection: Axis.vertical,
          // 그리드의 열 개수를 고정하는 속성입니다.
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 1 / 2,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.black12,
              ),
              // 컨테이너의 크기를 명시적으로 지정
              height: 200, // 고정된 높이
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Text(
                  //   '${index}',
                  //   style: TextStyle(
                  //     fontSize: 24,
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  SizedBox(height: 8),
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(
                      'assets/짱구.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
