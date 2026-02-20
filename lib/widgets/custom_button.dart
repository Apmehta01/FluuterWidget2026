import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomButton(
///   label: 'Submit',
///   onPressed: () {},
///   icon: Icons.check,
///   isLoading: false,
///   isOutlined: false,
///   backgroundColor: Colors.teal,
///   foregroundColor: Colors.white,
///   width: 180,
///   height: 48,
///   borderRadius: 12,
/// )
/// ```
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isOutlined = false,
    this.backgroundColor,
    this.foregroundColor,
    this.width,
    this.height = 48,
    this.borderRadius = 12,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isOutlined;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final content = isLoading
        ? const SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : icon == null
        ? Text(label)
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 18),
              const SizedBox(width: 8),
              Text(label),
            ],
          );

    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    );

    final button = isOutlined
        ? OutlinedButton(
            onPressed: isLoading ? null : onPressed,
            style: OutlinedButton.styleFrom(
              minimumSize: Size(width ?? 0, height),
              shape: shape,
              foregroundColor: foregroundColor,
            ),
            child: content,
          )
        : ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(width ?? 0, height),
              shape: shape,
              backgroundColor: backgroundColor,
              foregroundColor: foregroundColor,
            ),
            child: content,
          );

    if (width != null) {
      return SizedBox(width: width, child: button);
    }
    return button;
  }
}
