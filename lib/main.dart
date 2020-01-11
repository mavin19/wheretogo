import 'package:flutter/material.dart';
import 'package:wheretogo/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFff7BE57)
      ),
      home: FirstScreen(),
    );
  }
}
