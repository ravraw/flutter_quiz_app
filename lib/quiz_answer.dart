import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizAnswer extends StatelessWidget {
  const QuizAnswer(this.answer, this.select, {super.key});
  final String answer;
  final Function(String) select;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () => select(answer),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(5),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            answer,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
