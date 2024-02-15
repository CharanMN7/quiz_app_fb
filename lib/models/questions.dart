class Questions {
  Questions({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  final String question;
  final Map<String, String> answers;
  final String correctAnswer;
}
