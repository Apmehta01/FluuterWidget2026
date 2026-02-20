import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class MiscWidgetsDemoScreen extends StatefulWidget {
  const MiscWidgetsDemoScreen({super.key});

  @override
  State<MiscWidgetsDemoScreen> createState() => _MiscWidgetsDemoScreenState();
}

class _MiscWidgetsDemoScreenState extends State<MiscWidgetsDemoScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final chips = ['Flutter', 'Dart', 'Firebase', 'REST API'];

    return Scaffold(
      appBar: AppBar(title: const Text('Other Common Widgets')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomTextView(
            'CustomAvatar',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              CustomAvatar(name: 'Arpan Mehta'),
              SizedBox(width: 12),
              CustomAvatar(name: 'Flutter Dev'),
              SizedBox(width: 12),
              CustomAvatar(name: 'Code Team'),
            ],
          ),
          const SizedBox(height: 24),
          const CustomTextView(
            'CustomChip',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(chips.length, (index) {
              return CustomChip(
                label: chips[index],
                selected: _selectedIndex == index,
                onTap: () => setState(() => _selectedIndex = index),
              );
            }),
          ),
          const SizedBox(height: 24),
          const CustomTextView(
            'CustomLoader',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              CustomLoader(size: 24),
              SizedBox(width: 10),
              CustomLoader(size: 32),
              SizedBox(width: 10),
              CustomLoader(size: 40),
            ],
          ),
        ],
      ),
    );
  }
}
