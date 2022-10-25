import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Start quiz ",
          style: TextStyle(color: backgroundColor),
        ),
        centerTitle: true,
        backgroundColor: frontgroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Quiz App",
                style: TextStyle(
                  color: frontgroundColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                )),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: frontgroundColor,
                ),
                child: Text(
                  "start quiz",
                  style: TextStyle(color: backgroundColor),
                ))
          ],
        ),
      ),
    );
  }
}
