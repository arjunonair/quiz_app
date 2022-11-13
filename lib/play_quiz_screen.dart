import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({super.key});

  @override
  State<PlayQuizScreen> createState() => _PlayQuizScreenState();
}

class _PlayQuizScreenState extends State<PlayQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: backgroundColor),
          backgroundColor: frontgroundColor,
          centerTitle: true,
          title: Text(
            "Play Quiz",
            style: TextStyle(color: backgroundColor),
          ),
        ),
        body: PageView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'This is the question',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: List.generate(
                        4,
                        (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(color: frontgroundColor),
                                    borderRadius: BorderRadius.circular(10)),
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Option 1 ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              );
            }),
        bottomNavigationBar: InkWell(
          onTap: () {
            print('tapped');
          },
          child: Container(
            height: 70,
            color: frontgroundColor,
            alignment: Alignment.center,
            child: Text(
              "Next",
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: backgroundColor),
            ),
          ),
        ));
  }
}
