import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/quiz/components/question_card.dart';

import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(children: [
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
      SafeArea(
          child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ProgressBar(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Obx(() => Text.rich(TextSpan(
                    text:
                        "Question ${_questionController.questionNumber.value}",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        ?.copyWith(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white))
                    ])))),
        Divider(
          thickness: 1.5,
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _questionController.pageController,
          onPageChanged: _questionController.updateTheQnNum,
          itemCount: _questionController.questions.length,
          itemBuilder: (context, index) =>
              QuestionCard(question: _questionController.questions[index]),
        ))
      ]))
    ]);
  }
}
