import 'package:flutter/material.dart';
import 'sdg_detail_screen.dart';

class SDGSelectionScreen extends StatelessWidget {
  final List<String> sdgs = [
    'No Poverty (SDG 1)',
    'Zero Hunger (SDG 2)',
    'Good Health and Well-being (SDG 3)',
    'Quality Education (SDG 4)',
    'Gender Equality (SDG 5)',
    'Clean Water and Sanitation (SDG 6)',
    'Affordable and Clean Energy (SDG 7)',
    'Climate Action (SDG 13)',
  ];

  SDGSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select an SDG')),
      body: ListView.builder(
        itemCount: sdgs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sdgs[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SDGDetailScreen(sdg: sdgs[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
