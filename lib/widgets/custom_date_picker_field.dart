import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomDatePickerField(
///   label: 'Date of Birth',
///   initialDate: DateTime(2000, 1, 1),
///   firstDate: DateTime(1980, 1, 1),
///   lastDate: DateTime(2035, 12, 31),
///   onDateSelected: (date) {},
/// )
/// ```
class CustomDatePickerField extends StatefulWidget {
  const CustomDatePickerField({
    super.key,
    required this.label,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateSelected,
  });

  final String label;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final ValueChanged<DateTime>? onDateSelected;

  @override
  State<CustomDatePickerField> createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
  DateTime? _selectedDate;

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? widget.initialDate ?? now,
      firstDate: widget.firstDate ?? DateTime(now.year - 5),
      lastDate: widget.lastDate ?? DateTime(now.year + 5),
    );
    if (date != null) {
      setState(() => _selectedDate = date);
      widget.onDateSelected?.call(date);
    }
  }

  @override
  Widget build(BuildContext context) {
    final text = _selectedDate == null
        ? 'Select date'
        : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}';

    return TextFormField(
      readOnly: true,
      onTap: _pickDate,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: text,
        suffixIcon: const Icon(Icons.calendar_today_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
