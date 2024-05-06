import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // ignore: use_super_parameters
  MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    // ignore: avoid_print
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quizopia'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
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
              onPressed: answerQuestion,
              child: const Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
