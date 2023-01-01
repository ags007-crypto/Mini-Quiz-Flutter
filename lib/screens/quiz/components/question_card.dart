import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/models/questions.dart';

import 'options.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);
  final Question question;
  @override
  Widget build(BuildContext context) {
    var _firstPress = true;

    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(children: [
        Text(
          question.question,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black),
        ),
        ...List.generate(
            question.options.length,
            (index) => Option(
                index: index,
                text: question.options[index],
                press: () => {
                      // This is what you should add in your code
                      if (_firstPress)
                        {
                          _firstPress = false,
                          _controller.checkAns(question, index)
                        }
                    }))
      ]),
    );
  }
}
