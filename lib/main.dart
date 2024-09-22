import 'package:flutter/material.dart';
import 'Cover/cover_page.dart';
import 'main/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => CoverPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
