import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomDivider(
///   height: 24,
///   thickness: 1,
///   color: Colors.grey.shade300,
/// )
/// ```
class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.height = 24,
    this.thickness = 1,
    this.color,
  });

  final double height;
  final double thickness;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(height: height, thickness: thickness, color: color);
  }
}
