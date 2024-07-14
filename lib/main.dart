import 'package:flutter/material.dart';
import 'package:statefull_widget/screen_home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: ScreenHome(),
    );
  }
}
