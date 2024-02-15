import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.answer, required this.onTap, super.key});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(answer),
    );
  }
}
