import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuizScreen();
}

class _QuizScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Text("This is Question Screen");
  }
}
