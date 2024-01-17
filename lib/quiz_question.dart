import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/question.dart';
import 'package:flutter_quiz_app/quiz_answer.dart';

class QuizQuestion extends StatelessWidget {
  const QuizQuestion(this.question, this.select, {super.key});
  final Question question;
  final Function() select;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(question.text),
        for (final answer in question.answers) QuizAnswer(answer, select),
      ],
    );
  }
}
