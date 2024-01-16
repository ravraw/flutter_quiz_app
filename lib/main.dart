import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/start_screen.dart';

main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 243, 238, 238),
                Color.fromARGB(255, 61, 43, 166),
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
