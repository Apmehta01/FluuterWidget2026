import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ListViewDemoScreen extends StatelessWidget {
  const ListViewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tasks = [
      ('Design login screen', 'UI/UX', Icons.design_services_outlined, true),
      ('Integrate API service', 'Backend', Icons.api_rounded, false),
      ('Write widget tests', 'Quality', Icons.rule_rounded, false),
      ('Create onboarding flow', 'Product', Icons.auto_awesome_rounded, true),
      ('Optimize animations', 'Performance', Icons.speed_rounded, false),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('ListView Demo')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFDF3E7), Color(0xFFF7FAFC)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];
            return CustomCardView(
              title: task.$1,
              subtitle: 'Team: ${task.$2}',
              leadingIcon: task.$3,
              trailing: Icon(
                task.$4 ? Icons.check_circle : Icons.radio_button_unchecked,
                color: task.$4 ? Colors.green : Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}
