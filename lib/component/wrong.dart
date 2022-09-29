import 'package:flutter/material.dart';
import 'package:quizapp/component/AlertBoxCustom.dart';

class Wrong extends StatefulWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  State<Wrong> createState() => _WrongState();
}

class _WrongState extends State<Wrong> {
  @override
  Widget build(BuildContext context) {
    return CustomAlertBox(Dialog: [
      Column(
        children: [
          Image.asset(
            "images/wrong.png",
            scale: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Oh... it's wrong",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          const Text(
            "Let's try again",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ],
      ),
    ]);
  }
}
