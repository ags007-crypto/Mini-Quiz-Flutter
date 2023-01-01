import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/icons/bg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          ),
        ),
        Column(
          children: [
            Spacer(
              flex: 3,
            ),
            Text(
              "Score",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.white),
            ),
            Spacer(),
            Text(
              "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white),
            ),
            Spacer(
              flex: 3,
            )
          ],
        )
      ]),
    );
  }
}
