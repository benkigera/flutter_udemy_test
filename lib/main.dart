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
      'questionText': "What's your fav color?",
      "answers": [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'white', 'score': 1},
      ]
    },
    {
      'questionText': "What's your fav animal?",
      "answers": [
        {'text': 'elephant', 'score': 1},
        {'text': 'Lion', 'score': 1},
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 1}
      ]
    },
    {
      'questionText': "What's your fav meal?",
      "answers": [
        {'text': 'Pizza', 'score': 1},
        {'text': 'Rice', 'score': 1},
        {'text': 'Chicken Wings', 'score': 1},
        {'text': 'Steak', 'score': 1},
      ]
    },
  ];
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestions(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
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
            : Result(_totalScore, _resetQuiz),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
