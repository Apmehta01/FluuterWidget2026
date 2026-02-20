import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomLoader(
///   size: 28,
///   strokeWidth: 3,
/// )
/// ```
class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key, this.size = 28, this.strokeWidth = 3});

  final double size;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(strokeWidth: strokeWidth),
    );
  }
}
