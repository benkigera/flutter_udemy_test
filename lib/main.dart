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
      "What's your fav color",
      "What's your fav animal",
      "What's your fav meal",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hey'),
        ),
        body: Column(
          children: [
            Questions(questions[_questionIndex]),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
            Answer(_answerQuestions),
          ],
        ),
      ),
    );
  }
}
