import 'package:flutter/material.dart';
import 'package:onboarding/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Onboarding UI',
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
