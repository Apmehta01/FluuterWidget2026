import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomBadge(
///   child: Icon(Icons.notifications_outlined),
///   count: 12,
///   color: Colors.red,
///   textColor: Colors.white,
/// )
/// ```
class CustomBadge extends StatelessWidget {
  const CustomBadge({
    super.key,
    required this.child,
    required this.count,
    this.color,
    this.textColor,
  });

  final Widget child;
  final int count;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Positioned(
          top: -6,
          right: -6,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: color ?? Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              '$count',
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
