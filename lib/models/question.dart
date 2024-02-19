class Question {
  Question({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  final String question;
  final Map<String, String> answers;
  final String correctAnswer;

  factory Question.fromJSON(Map<String, dynamic> json) => Question(
        question: json['question'] as String,
        answers: Map<String, String>.from(json['answers'] as Map),
        correctAnswer: json['correctAnswer'] as String,
      );
}
