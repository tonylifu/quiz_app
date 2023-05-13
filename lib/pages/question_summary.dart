import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary({required this.summaryData, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (e) => Row(
                  children: [
                    Text(((e["question_index"] as int) + 1).toString()),
                    Expanded(
                      child: Column(
                        children: [
                          Text(e["question"] as String),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(e["chosen_answer"] as String),
                          Text(e["correct_answer"] as String),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
