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
        'correctAnswer': question.answers[0],
        'isCorrect': isCorrect,
      });
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    int correctAnswers = getSummaryData()
        .where((element) => element['isCorrect'] as bool)
        .length;

    for (var i = 0; i < questions.length; i++) {
      var question = questions[i];
      var selectedAnswer = selectedAnswers[i];
      if (question.answers[0] == selectedAnswer) {
        correctAnswers++;
      }
    }
    return SizedBox(
      height: 1000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answered ${correctAnswers.toString()} out of ${selectedAnswers.length.toString()} questions correctly!',
            style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          ...getSummaryData().asMap().entries.map((entry) => QuestionResult(
              entry.key,
              entry.value['question'] as String,
              entry.value['selectedAnswer'] as String,
              entry.value['correctAnswer'] as String)),
          const SizedBox(height: 50),
          OutlinedButton.icon(
              onPressed: retryQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.white,
                  )),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Retry Quiz')),
        ],
      ),
    );
  }
}
