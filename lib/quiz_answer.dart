import 'package:flutter/material.dart';

class QuizAnswer extends StatelessWidget {
  const QuizAnswer(this.answer, this.select, {super.key});
  final String answer;
  final Function() select;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: select,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(answer),
    );
  }
}
