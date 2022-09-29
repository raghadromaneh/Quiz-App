import 'package:flutter/material.dart';
import 'package:quizapp/component/StartNowButton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 32, 55),
        body: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // color: Color.fromARGB(255, 1, 22, 39),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      "images/brain.png",
                      width: 180,
                    ),
                    Image.asset(
                      "images/Logo.png",
                      width: 220,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: const [
                Text(
                  "Let's Start!",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Test yourself in english language",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const StartNowButton(),
          ],
        ),
      ),
    );
  }
}
