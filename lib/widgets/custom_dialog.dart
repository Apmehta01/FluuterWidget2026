import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomDialog.show(
///   context,
///   title: 'Delete Item',
///   message: 'Are you sure you want to delete this item?',
///   confirmText: 'Delete',
///   cancelText: 'Cancel',
///   onConfirm: () {},
///   onCancel: () {},
/// )
/// ```
class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.message,
    this.confirmText = 'OK',
    this.cancelText,
    this.onConfirm,
    this.onCancel,
  });

  final String title;
  final String message;
  final String confirmText;
  final String? cancelText;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required String message,
    String confirmText = 'OK',
    String? cancelText,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    return showDialog<void>(
      context: context,
      builder: (_) => CustomDialog(
        title: title,
        message: message,
        confirmText: confirmText,
        cancelText: cancelText,
        onConfirm: onConfirm,
        onCancel: onCancel,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        if (cancelText != null)
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              onCancel?.call();
            },
            child: Text(cancelText!),
          ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            onConfirm?.call();
          },
          child: Text(confirmText),
        ),
      ],
    );
  }
}
