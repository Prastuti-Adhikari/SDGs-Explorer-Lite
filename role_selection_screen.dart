import 'package:flutter/material.dart';
import 'sdg_selection_screen.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  _RoleSelectionScreenState createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  String selectedRole = 'Student';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Your Role')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RadioListTile(
            title: const Text('Student'),
            value: 'Student',
            groupValue: selectedRole,
            onChanged: (value) {
              setState(() {
                selectedRole = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text('Teacher'),
            value: 'Teacher',
            groupValue: selectedRole,
            onChanged: (value) {
              setState(() {
                selectedRole = value.toString();
              });
            },
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SDGSelectionScreen()),
              );
            },
            child: const Text('Continue'),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
