import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stack_test/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.jpeg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(999)),
              ),
              // 반투명 레이어
              Container(
                width: 300,
                height: 300,
                child: Center(
                  child: Text(
                    'Pizza',
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(999)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
