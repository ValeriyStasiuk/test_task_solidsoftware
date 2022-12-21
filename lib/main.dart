import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Color _color;

  void generateColor() {
    setState(() {
      _color = Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
          .withOpacity(1.0);
    });
  }

  @override
  void initState() {
    generateColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => generateColor(),
      child: Container(
        alignment: Alignment.center,
        color: _color,
        child: const Text(
          "Hey there",
          style: TextStyle(fontSize: 25),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
