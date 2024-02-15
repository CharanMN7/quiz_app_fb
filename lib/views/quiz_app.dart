import 'package:flutter/material.dart';
import 'package:quiz_app_fb/views/quiz_screen.dart';
import 'package:quiz_app_fb/views/start_screen.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var currentScreen = 'start';

  void switchScreen() {
    setState(() {
      currentScreen = 'questions';
    });
  }

  @override
  Widget build(context) {
    Widget activeScreen = currentScreen == 'start'
        ? StartScreen(
            onTap: switchScreen,
          )
        : const QuizScreen();

    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
