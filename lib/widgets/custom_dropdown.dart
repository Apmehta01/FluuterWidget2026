import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomDropdown<String>(
///   items: const [
///     DropdownMenuItem(value: 'Flutter', child: Text('Flutter')),
///     DropdownMenuItem(value: 'Dart', child: Text('Dart')),
///   ],
///   value: 'Flutter',
///   onChanged: (value) {},
///   hintText: 'Select technology',
///   labelText: 'Technology',
/// )
/// ```
class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.hintText,
    this.labelText,
  });

  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String? hintText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          isExpanded: true,
          value: value,
          items: items,
          hint: hintText == null ? null : Text(hintText!),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
