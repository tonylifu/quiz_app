import "package:flutter/material.dart";
import "package:quiz_app/pages/quiz.dart";

void main(List<String> args) => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
