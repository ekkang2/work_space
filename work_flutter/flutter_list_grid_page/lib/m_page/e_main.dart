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
        appBar: AppBar(
          title: Text('pageview'),
        ),
        body: PageView.builder(
          controller: PageController(
            initialPage: 2,
            viewportFraction: 0.9,
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            List<String> imagePaths = [
              'assets/grid1.jpg',
              'assets/짱구.png',
              'assets/hamburger.png',
            ];
            return Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      imagePaths[index]), // Load image based on index
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
