import 'package:flutter/material.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 2, 32, 55),
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(120),
            child: AppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              leading: const Padding(
                padding: EdgeInsets.all(7),
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(80, 14, 177, 171),
                  child: BackButton(
                    color: Color.fromARGB(255, 19, 164, 150),
                  ),
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/brain.png",
                    scale: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Questions",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 6, 220, 198)),
                  ),
                  const SizedBox(
                    width: 35,
                  )
                ],
              ),
              centerTitle: true,
              bottom: TabBar(
                indicatorColor: const Color.fromARGB(255, 232, 10, 180),
                indicatorWeight: 3,
                labelPadding: const EdgeInsets.all(10),
                tabs: [
                  Image.asset(
                    "images/1.png",
                    width: 25,
                  ),
                  Image.asset(
                    "images/2.png",
                    width: 25,
                  ),
                  Image.asset(
                    "images/3.png",
                    width: 25,
                  ),
                  Image.asset(
                    "images/4.png",
                    width: 25,
                  ),
                  Image.asset(
                    "images/5.png",
                    width: 25,
                  ),
                  Image.asset(
                    "images/6.png",
                    width: 25,
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Qus(
                answer_1: "Sheep",
                answer_2: "Duck",
                answer_3: "Tiger",
                answer_4: "Dog",
                CorrectAnswer: "Duck",
                qus_text: "A ....... lays an egg.",
              ),
              Qus(
                answer_1: "Brush",
                answer_2: "Eat",
                answer_3: "Take",
                answer_4: "Sweep",
                CorrectAnswer: "Brush",
                qus_text: "I ....... my teeth everyday.",
              ),
              Qus(
                answer_1: "Book",
                answer_2: "Bag",
                answer_3: "Pencilecase",
                answer_4: "Glue",
                CorrectAnswer: "Pencilecase",
                qus_text: "I keep my pencil in the ......",
              ),
              Qus(
                answer_1: "Cow",
                answer_2: "Cat",
                answer_3: "Lion",
                answer_4: "Fish",
                CorrectAnswer: "Cow",
                qus_text: "A ........ produces milk for us.",
              ),
              Qus(
                answer_1: "Triangle",
                answer_2: "Oval",
                answer_3: "Square",
                answer_4: "Circle",
                CorrectAnswer: "Circle",
                qus_text: "The shape of ball is:",
              ),
              Qus(
                answer_1: "House",
                answer_2: "Marekt",
                answer_3: "Pool",
                answer_4: "Churrch",
                CorrectAnswer: "House",
                qus_text: "We live in the .....",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
