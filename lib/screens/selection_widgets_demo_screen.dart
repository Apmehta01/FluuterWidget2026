import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SelectionWidgetsDemoScreen extends StatefulWidget {
  const SelectionWidgetsDemoScreen({super.key});

  @override
  State<SelectionWidgetsDemoScreen> createState() =>
      _SelectionWidgetsDemoScreenState();
}

class _SelectionWidgetsDemoScreenState
    extends State<SelectionWidgetsDemoScreen> {
  String? _dropdownValue = 'Flutter';
  bool _isChecked = true;
  String? _radioValue = 'Beginner';
  bool _isEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Selection Widgets'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CustomDropdown<String>(
            labelText: 'Framework',
            value: _dropdownValue,
            onChanged: (value) => setState(() => _dropdownValue = value),
            items: const [
              DropdownMenuItem(value: 'Flutter', child: Text('Flutter')),
              DropdownMenuItem(
                value: 'React Native',
                child: Text('React Native'),
              ),
              DropdownMenuItem(value: 'Kotlin', child: Text('Kotlin')),
            ],
          ),
          const SizedBox(height: 14),
          CustomCheckbox(
            value: _isChecked,
            label: 'Enable notifications',
            onChanged: (value) => setState(() => _isChecked = value ?? false),
          ),
          const SizedBox(height: 8),
          CustomRadioGroup<String>(
            options: const ['Beginner', 'Intermediate', 'Advanced'],
            groupValue: _radioValue,
            onChanged: (value) => setState(() => _radioValue = value),
          ),
          const SizedBox(height: 8),
          CustomSwitchTile(
            title: 'Dark mode preview',
            subtitle: 'Demo switch tile for settings',
            value: _isEnabled,
            onChanged: (value) => setState(() => _isEnabled = value),
          ),
        ],
      ),
    );
  }
}
