// ignore_for_file: prefer_const_constructors

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screens/quiz/quiz_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
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
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(
                flex: 2,
              ),
              Text(
                "Let's Play Quiz, ",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text("Enter your information below"),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1C2341),
                  hintText: "Full Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => Get.to(QuizScreen()),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 220, 66),
                          Color.fromARGB(255, 0, 107, 54),

                          //add more colors for gradient
                        ],
                        begin: Alignment.topLeft, //begin of the gradient color
                        end: Alignment.bottomRight, //end of the gradient color
                        stops: [
                          0,
                          0.5,
                        ] //stops for individual color
                        //set the stops number equal to numbers of color
                        ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "Let's Start Quiz",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              Spacer(
                flex: 2,
              )
            ],
          ),
        ))
      ],
    ));
  }
}
