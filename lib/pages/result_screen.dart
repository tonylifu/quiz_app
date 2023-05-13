import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/pages/question_summary.dart';
import 'package:quiz_app/pages/util/title_text_widget.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  final Function() restartQuiz;

  const ResultScreen(
      {required this.restartQuiz, required this.chosenAnswers, super.key});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "chosen_answer": chosenAnswers[i]
        },
      );
    }
    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where(
            (element) => element['chosen_answer'] == element['correct_answer'])
        .toList()
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleTextWidget(
              titleText:
                  "You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!",
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(
              summaryData: summaryData,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: restartQuiz,
              label: const Text("Restart Quiz"),
              icon: const Icon(Icons.restart_alt),
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 177, 132, 202),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
