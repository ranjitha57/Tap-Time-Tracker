import 'package:flutter/material.dart';
import 'package:one_page_app/view/home_screen_ui.dart';

void main() {
  runApp(const TapTimeApp());
}

class TapTimeApp extends StatelessWidget {
  const TapTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TapTime Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


