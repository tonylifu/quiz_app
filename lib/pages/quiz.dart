import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/pages/question_screen.dart';
import 'package:quiz_app/pages/quiz_home.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _Quiz();
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];
  var currentScreen = "start-screen";

  void switchScreen() {
    if (mounted) {
      setState(() {
        currentScreen = "questions-screen";
      });
    }
  }

  void choseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      //todo => go to result screen
      setState(() {
        selectedAnswers = [];
        currentScreen = "start-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      home: Scaffold(
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
          child: getScreen(currentScreen),
        ),
      ),
    );
  }

  Widget getScreen(String screenWgt) {
    return screenWgt == "questions-screen"
        ? QuestionsScreen(
            onSelectAnswer: choseAnswer,
          )
        : StartScreen(switchScreen);
  }
}
