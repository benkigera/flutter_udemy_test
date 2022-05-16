import 'package:flutter/material.dart';
import 'package:flutter_udemy_test/result.dart';

import './quiz.dart';

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
  final _questions = const [
    {
      'questionText': "What's your fav color",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1},
      ]
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

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hey'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestions,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
