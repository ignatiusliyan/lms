import 'package:flutter/material.dart';
import 'package:lms/HomePage.dart';
import 'package:lms/scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LMS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 81, 255)),
        useMaterial3: true,
      ),
      home: Homepage(),
    );
  }
}
