import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({required this.onTap, super.key});

  final void Function() onTap;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/flutterfire_logo.png",
            width: 350,
          ),
          const Text(
            "Test your Flutter prowess on the go!",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton.icon(
            onPressed: widget.onTap,
            icon: const Icon(Icons.chevron_right_rounded),
            label: const Text("Start Quiz"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
