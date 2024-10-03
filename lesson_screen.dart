import 'package:flutter/material.dart';

class LessonScreen extends StatelessWidget {
  final String sdg;

  const LessonScreen({super.key, required this.sdg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lesson: $sdg')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This is a detailed lesson on $sdg. It explains why this SDG is important and what actions can be taken.',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
