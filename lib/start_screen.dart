import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() {
    return _StartScreenState();
  }
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const Text("Test your Flutter prowess on the go!"),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.chevron_right_rounded),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
