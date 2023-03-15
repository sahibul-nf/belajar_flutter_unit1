import 'package:belajar_flutter/explore_page.dart';
import 'package:belajar_flutter/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Belajar Flutter",
      home: Menu(),
    );
  }
}
