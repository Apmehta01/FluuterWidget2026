import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomRadioGroup<String>(
///   options: const ['Beginner', 'Intermediate', 'Advanced'],
///   groupValue: 'Beginner',
///   onChanged: (value) {},
/// )
/// ```
class CustomRadioGroup<T> extends StatelessWidget {
  const CustomRadioGroup({
    super.key,
    required this.options,
    required this.groupValue,
    required this.onChanged,
  });

  final List<T> options;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options.map((option) {
        final isSelected = option == groupValue;
        return ChoiceChip(
          selected: isSelected,
          label: Text(option.toString()),
          onSelected: (_) => onChanged(option),
        );
      }).toList(),
    );
  }
}
