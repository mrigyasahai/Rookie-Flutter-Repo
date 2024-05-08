import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 76, 242, 203),
        ),
        child: const Text('Answer 1'),
      ),
    );
  }
}
