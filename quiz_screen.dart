import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  final String sdg;

  const QuizScreen({super.key, required this.sdg});

  @override
  QuizScreenState createState() => QuizScreenState(); // Change to public state class
}

class QuizScreenState extends State<QuizScreen> {
  int score = 0;
  int questionIndex = 0;
  List<Map<String, Object>> questions = [
    {
      'question': 'What is Climate Action?',
      'answers': [
        {'text': 'Efforts to reduce climate change', 'correct': true},
        {'text': 'Just about recycling', 'correct': false},
        {'text': 'Not important', 'correct': false},
      ],
    },
    {
      'question': 'Why is Gender Equality important?',
      'answers': [
        {'text': 'To ensure equal rights', 'correct': true},
        {'text': 'Only helps men', 'correct': false},
        {'text': 'Not necessary', 'correct': false},
      ],
    },
  ];

  void answerQuestion(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        score += 1;
      });
    }
    setState(() {
      questionIndex += 1;
    });

    if (questionIndex >= questions.length) {
      showResult();
    }
  }

  void showResult() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Quiz Completed'),
        content: Text('You scored $score out of ${questions.length}!'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz: ${widget.sdg}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (questionIndex < questions.length)
              Column(
                children: [
                  Text(
                    questions[questionIndex]['question'] as String,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 20),
                  ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
                      .map((answer) {
                    return ElevatedButton(
                      onPressed: () => answerQuestion(answer['correct'] as bool),
                      child: Text(answer['text'] as String),
                    );
                  // ignore: unnecessary_to_list_in_spreads
                  }).toList(),
                ],
              )
            else
                Center(
                  child: Text('Quiz Completed! You scored $score out of ${questions.length}.'),
                ),
          ],
        ),
      ),
    );
  }
}
