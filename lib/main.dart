import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';
import './skip.dart';

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
  final questions = const [
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
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Skip("Welcome...", Icons.visibility_off),
                  Questions(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestions, answer);
                  }).toList()
                ],
              )
            : Center(child: Text("You did it")),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
