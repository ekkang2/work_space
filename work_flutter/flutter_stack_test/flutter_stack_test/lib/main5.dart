import 'package:flutter/cupertino.dart';
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
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(width: 2, color: Colors.blue)),
              ),
              Text(
                '2 : 55 : 10',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      )),
    );
  }
}
