import 'package:flutter/material.dart';

class QuizHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(215, 74, 27, 140),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Learn Flutter the Fun Way!",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 177, 132, 202),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: startQuiz,
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 177, 132, 202),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void startQuiz() {}
}
