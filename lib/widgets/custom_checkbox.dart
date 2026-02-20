import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomCheckbox(
///   value: true,
///   onChanged: (value) {},
///   label: 'Accept Terms & Conditions',
/// )
/// ```
class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.label,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      title: Text(label),
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
    );
  }
}
