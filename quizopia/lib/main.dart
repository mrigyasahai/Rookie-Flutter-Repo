import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // ignore: avoid_print
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(
            'Quizopia',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
              
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => print('Answer 2 chosen!'),
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                // ignore: avoid_print
                print('Answer 3 chosen!');
              },
              child: const Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
