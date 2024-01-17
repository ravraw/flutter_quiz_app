import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/models/question.dart';
import 'package:flutter_quiz_app/quiz_question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.question, void Function() this.select,
      {super.key});
  final Question question;
  final Function() select;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(Object context) {
    return Column(
      children: [
        QuizQuestion(widget.question, widget.select),
      ],
    );
  }
}
