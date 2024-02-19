import 'package:firebase_database/firebase_database.dart';
import 'package:quiz_app_fb/models/question.dart';

class QuestionsController {
  DatabaseReference db = FirebaseDatabase.instance.ref();
  Future<List<Question>> getQuestions() async {
    final ref = await FirebaseDatabase.instance.ref().child('questions').once();

    final db = ref.snapshot.value;

    final questionsMap = db! as List<dynamic>;

    final questions = questionsMap
        .map((value) => Question.fromJSON(value as Map<String, dynamic>))
        .toList();

    return questions;
  }
}
