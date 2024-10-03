import 'package:flutter/material.dart';
import 'lesson_screen.dart';
import 'quiz_screen.dart';
import 'challenges_screen.dart';

class SDGDetailScreen extends StatelessWidget {
  final String sdg;

  const SDGDetailScreen({super.key, required this.sdg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(sdg)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LessonScreen(sdg: sdg)),
              );
            },
            child: const Text('Lessons'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QuizScreen(sdg: sdg)),
              );
            },
            child: const Text('Quizzes'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChallengesScreen(sdg: sdg)),
              );
            },
            child: const Text('Challenges'),
          ),
        ],
      ),
    );
  }
}
