import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

// method with only one expression
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': "What's your fav color",
        "answers": ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': "What's your fav animal",
        "answers": ['elephant', 'Lion', 'Rabbit', 'Snake']
      },
      {
        'questionText': "What's your fav meal",
        "answers": ['Pizza', 'Steak', 'Ugali', 'Chicken wings']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hey'),
        ),
        body: Column(
          children: [
            Questions(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
