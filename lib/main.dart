import 'package:flutter/material.dart';
import 'pages/intro.dart' as intro;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Shop App",
      home: intro.IntroPage(),
    );
  }
}
