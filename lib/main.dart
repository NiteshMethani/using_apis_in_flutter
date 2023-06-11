import 'package:flutter/material.dart';
import 'package:using_apis_in_flutter/app_scroll_behaviour.dart';
import 'package:using_apis_in_flutter/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
