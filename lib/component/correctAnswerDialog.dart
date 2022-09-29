import 'package:flutter/material.dart';
import 'package:quizapp/component/AlertBoxCustom.dart';

class Correct extends StatelessWidget {
  const Correct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAlertBox(Dialog: [
      Column(
        children: [
          Image.asset(
            "images/correct.png",
            scale: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Well done!",
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
