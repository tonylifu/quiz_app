import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/pages/util/title_text_widget.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuizScreen();
}

class _QuizScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final answers = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TitleTextWidget(
              titleText: answers.text,
            ),
            const SizedBox(
              height: 30,
            ),
            // questions.map((element) {
            //   element.answers
            //       .map((item) => AnswerButton(answer: item, onClick: () => {}));
            // }),
            ...answers.getShuffledAnswers().map(
                  (item) => AnswerButton(
                    answer: item,
                    onClick: answerQuestion,
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
