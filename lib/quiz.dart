import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

const color1 = Color.fromARGB(255, 130, 170, 226);
const color2 = Color.fromARGB(255, 22, 72, 141);

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  var currentQuestion = 0;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void select() {
    setState(() {
      currentQuestion++;
    });
    if (currentQuestion < questions.length) {
      switchScreen();
    } else {
      setState(() {
        activeScreen = StartScreen(switchScreen);
        currentQuestion = 0;
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(questions[currentQuestion], select);
    });
  }

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
              colors: [color1, color2],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
