import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Text(
          "Hello Flutter",
          style: TextStyle(
            color: const Color.fromARGB(255, 221, 221, 221),
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
