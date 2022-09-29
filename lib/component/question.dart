import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quizapp/component/AnswersButton.dart';
import 'package:quizapp/component/correctAnswerDialog.dart';
import 'package:quizapp/component/wrong.dart';

// ignore: must_be_immutable
class Qus extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Qus({
    // ignore: non_constant_identifier_names
    required this.qus_text,
    required this.answer_1,
    required this.answer_2,
    required this.answer_3,
    required this.answer_4,
    // ignore: non_constant_identifier_names
    required this.CorrectAnswer,
  });
  // ignore: non_constant_identifier_names
  String? qus_text;
  String? answer_1;
  String? answer_2;
  String? answer_3;
  String? answer_4;
  // ignore: non_constant_identifier_names
  String? CorrectAnswer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            height: 140,
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 2, 30, 154),
                  Color.fromARGB(255, 195, 2, 230),
                  Colors.pink
                ]),
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "$qus_text",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          const Divider(
            height: 50,
          ),
          AnswerButton(
            answer: answer_1,
            OnPressing: () {
              if (answer_1 == CorrectAnswer) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Correct();
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Wrong();
                  },
                );
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnswerButton(
            answer: answer_2,
            OnPressing: () {
              if (answer_2 == CorrectAnswer) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Correct();
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Wrong();
                  },
                );
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnswerButton(
            answer: answer_3,
            OnPressing: () {
              if (answer_3 == CorrectAnswer) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Correct();
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Wrong();
                  },
                );
              }
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnswerButton(
            answer: answer_4,
            OnPressing: () {
              if (answer_4 == CorrectAnswer) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Correct();
                  },
                );
              } else {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const Wrong();
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
