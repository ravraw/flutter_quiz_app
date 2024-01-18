import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_result.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, this.retryQuiz, {super.key});

  final List<String> selectedAnswers;
  final Function() retryQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < questions.length; i++) {
      var question = questions[i];
      var selectedAnswer = selectedAnswers[i];
      var isCorrect = question.answers[0] == selectedAnswer;
      summaryData.add({
        'question': question.text,
        'selectedAnswer': selectedAnswer,
        'correctAnswer': question.answers[0], // 'correctAnswer
        'isCorrect': isCorrect,
      });
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You answered x out of y questions correctly!',
          style: GoogleFonts.lato(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        ...getSummaryData()
            .map((obj) => QuestionResult(
                obj['question'] as String,
                obj['selectedAnswer'] as String,
                obj['correctAnswer'] as String))
            .toList(),
        const SizedBox(height: 50),
        OutlinedButton.icon(
            onPressed: retryQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(
                  color: Colors.white,
                )),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Retry Quiz'))
      ],
    );
  }
}
