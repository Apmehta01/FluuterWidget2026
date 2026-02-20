import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomOTPField(
///   length: 4,
///   onCompleted: (otp) {},
/// )
/// ```
class CustomOTPField extends StatefulWidget {
  const CustomOTPField({super.key, this.length = 4, this.onCompleted});

  final int length;
  final ValueChanged<String>? onCompleted;

  @override
  State<CustomOTPField> createState() => _CustomOTPFieldState();
}

class _CustomOTPFieldState extends State<CustomOTPField> {
  late final List<TextEditingController> _controllers;
  late final List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _focusNodes = List.generate(widget.length, (_) => FocusNode());
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _handleChange(int index, String value) {
    if (value.isNotEmpty && index < widget.length - 1) {
      _focusNodes[index + 1].requestFocus();
    }
    if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }

    final otp = _controllers.map((c) => c.text).join();
    final allFilled = _controllers.every(
      (controller) => controller.text.isNotEmpty,
    );
    if (otp.length == widget.length && allFilled) {
      widget.onCompleted?.call(otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        widget.length,
        (index) => SizedBox(
          width: 56,
          child: TextField(
            controller: _controllers[index],
            focusNode: _focusNodes[index],
            keyboardType: TextInputType.number,
            maxLength: 1,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              counterText: '',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onChanged: (value) => _handleChange(index, value),
          ),
        ),
      ),
    );
  }
}
