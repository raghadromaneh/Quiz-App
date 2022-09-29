import 'package:flutter/material.dart';
import 'package:quizapp/component/AlertBoxCustom.dart';
import 'package:quizapp/models/Quiz.dart';

class StartNowButton extends StatefulWidget {
  const StartNowButton({Key? key}) : super(key: key);

  @override
  State<StartNowButton> createState() => _StartNowButtonState();
}

class _StartNowButtonState extends State<StartNowButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return CustomAlertBox(
              Dialog: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Column(
                    children: [
                      const Text(
                        "This quiz contains 6 McQ :",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        color: const Color.fromARGB(255, 123, 32, 198),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const Quiz();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          "START",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 90,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: const Color.fromARGB(255, 123, 32, 198),
      child: const Text(
        "Start Now",
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
