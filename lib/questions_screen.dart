import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/question.dart';
import 'package:flutter_quiz_app/quiz_question.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen(this.question, this.select, {super.key});
  final Question question;
  final Function(String) select;

  @override
  Widget build(Object context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        QuizQuestion(question, select),
      ],
    );
  }
}
