import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnswerButton extends StatelessWidget {
  // ignore: non_constant_identifier_names
  AnswerButton({super.key, this.answer, required this.OnPressing});
  String? answer;
  // ignore: non_constant_identifier_names
  Function() OnPressing;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: const Color.fromARGB(0, 241, 240, 240),
      onPressed: OnPressing,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 90,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
              width: 2, color: Color.fromARGB(255, 123, 32, 198))),
      child: Text(
        "$answer",
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
