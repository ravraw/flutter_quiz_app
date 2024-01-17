import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz_app/models/question.dart';
import 'package:flutter_quiz_app/quiz_answer.dart';

class QuizQuestion extends StatelessWidget {
  const QuizQuestion(this.question, this.select, {super.key});
  final Question question;
  final Function() select;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.text,
            style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          for (final answer in question.getShuffledAnswer())
            QuizAnswer(answer, select),
        ],
      ),
    );
  }
}
