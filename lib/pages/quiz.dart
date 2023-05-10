import 'package:flutter/material.dart';
import 'package:quiz_app/pages/question_screen.dart';
import 'package:quiz_app/pages/quiz_home.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  var currentScreen = "start-screen";

  void switchScreen() {
    if (mounted) {
      setState(() {
        currentScreen = "questions-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
        //backgroundColor: const Color.fromARGB(215, 74, 27, 140),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 28, 3, 69),
                Color.fromARGB(255, 61, 15, 113),
                Color.fromARGB(255, 100, 40, 119),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen == "questions-screen"
              ? const QuestionsScreen()
              : StartScreen(switchScreen),
        ),
      ),
    );
  }
}
