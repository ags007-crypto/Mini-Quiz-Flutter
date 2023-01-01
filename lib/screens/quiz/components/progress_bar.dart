import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/controllers/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF3F4768), width: 3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: ((controller) {
            return Stack(
              children: [
                LayoutBuilder(
                    builder: (context, constraints) => Container(
                          width:
                              constraints.maxWidth * controller.animation.value,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 220, 70, 0),
                                    Color.fromARGB(255, 175, 108, 7),

                                    //add more colors for gradient
                                  ],
                                  begin: Alignment
                                      .centerLeft, //begin of the gradient color
                                  end: Alignment
                                      .centerRight, //end of the gradient color
                                  stops: [
                                    0,
                                    0.5,
                                  ] //stops for individual color
                                  //set the stops number equal to numbers of color
                                  ),
                              borderRadius: BorderRadius.circular(50)),
                        )),
                Positioned.fill(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${(controller.animation.value * 60).round()} sec"),
                    ],
                  ),
                ))
              ],
            );
          }),
        ));
  }
}
