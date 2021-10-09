import 'package:fluento_app/Screens/Question/models/question.dart';
import 'package:fluento_app/Screens/Question/screens/BeginnerScreens/4ops_img.dart';
import 'package:flutter/material.dart';

class QuizHandler extends StatefulWidget {
  static const routeName = '/QuizHandler';
  const QuizHandler({Key? key}) : super(key: key);

  @override
  _QuizHandlerState createState() => _QuizHandlerState();
}

class _QuizHandlerState extends State<QuizHandler> {
  @override
  Widget build(BuildContext context) {
    final quiz =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return PageView.builder(
      itemCount: quiz['quizList'].length,
      itemBuilder: (BuildContext context, int index) {
        final String questionType = quiz['quizList'][index].questionType;
        return FOpsImage(
          title: quiz['quizName'],
          imageString: quiz['quizList'][index].imageString,
          answer: quiz['quizList'][index].answer,
          questionText: quiz['quizList'][index].questionText,
          optionA: quiz['quizList'][index].optionA,
          optionB: quiz['quizList'][index].optionB,
          optionC: quiz['quizList'][index].optionC,
          optionD: quiz['quizList'][index].optionD,
          quesNo: index + 1,
        );
      },
    );
  }
}
