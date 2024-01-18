import 'package:flutter/material.dart';

class QuestionResult extends StatelessWidget {
  const QuestionResult(this.index, this.question, this.selected, this.correct,
      {super.key});

  final int index;
  final String question;
  final String selected;
  final String correct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            correct,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
          Text(
            selected,
            style: TextStyle(
              color: selected == correct
                  ? const Color.fromARGB(255, 10, 245, 17)
                  : const Color.fromARGB(255, 243, 6, 25),
              fontSize: 14.0,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
