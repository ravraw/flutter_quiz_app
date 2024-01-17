class Question {
  const Question(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
