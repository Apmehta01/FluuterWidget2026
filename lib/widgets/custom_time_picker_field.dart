import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomTimePickerField(
///   label: 'Meeting Time',
///   initialTime: TimeOfDay(hour: 10, minute: 30),
///   onTimeSelected: (time) {},
/// )
/// ```
class CustomTimePickerField extends StatefulWidget {
  const CustomTimePickerField({
    super.key,
    required this.label,
    this.initialTime,
    this.onTimeSelected,
  });

  final String label;
  final TimeOfDay? initialTime;
  final ValueChanged<TimeOfDay>? onTimeSelected;

  @override
  State<CustomTimePickerField> createState() => _CustomTimePickerFieldState();
}

class _CustomTimePickerFieldState extends State<CustomTimePickerField> {
  TimeOfDay? _selectedTime;

  Future<void> _pickTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? widget.initialTime ?? TimeOfDay.now(),
    );
    if (time != null) {
      setState(() => _selectedTime = time);
      widget.onTimeSelected?.call(time);
    }
  }

  @override
  Widget build(BuildContext context) {
    final text = _selectedTime == null
        ? 'Select time'
        : _selectedTime!.format(context);

    return TextFormField(
      readOnly: true,
      onTap: _pickTime,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: text,
        suffixIcon: const Icon(Icons.access_time_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
