import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  final String sdg;

  const ChallengesScreen({super.key, required this.sdg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Challenges for $sdg')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Here are some challenges related to $sdg:',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const ListTile(
              title: Text('Challenge 1: Reduce Plastic Use'),
              subtitle: Text('Try to avoid using plastic for one week.'),
            ),
            const ListTile(
              title: Text('Challenge 2: Plant a Tree'),
              subtitle: Text('Plant a tree and take care of it.'),
            ),
            const ListTile(
              title: Text('Challenge 3: Organize a Community Clean-Up'),
              subtitle: Text('Gather your friends and clean up a local area.'),
            ),
          ],
        ),
      ),
    );
  }
}
