import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier(this.isCorrectAnswer, this.questionIndex,
      {super.key});

  final bool isCorrectAnswer;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            color: isCorrectAnswer
                ? const Color.fromARGB(255, 90, 160, 240)
                : const Color.fromARGB(255, 249, 114, 253),
            borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(questionNumber.toString()),
        ),
      ),
    );
  }
}
