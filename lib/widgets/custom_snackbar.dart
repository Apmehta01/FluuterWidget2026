import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomSnackbar.show(
///   context,
///   message: 'Saved successfully',
///   backgroundColor: Colors.black87,
///   action: SnackBarAction(label: 'Undo', onPressed: () {}),
///   duration: Duration(seconds: 2),
/// )
/// ```
class CustomSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 2),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
        duration: duration,
        action: action,
      ),
    );
  }
}
