import 'package:flutter/material.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult(this.question, this.selected, this.correct, {super.key});

  final String question;
  final String selected;
  final String correct;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.isEmpty ? 'No question' : question,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          correct.isEmpty ? 'No correct answer' : correct,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
          ),
        ),
        Text(
          selected.isEmpty ? 'No selected answer' : selected,
          style: TextStyle(
            color: selected == correct ? Colors.green : Colors.red,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
