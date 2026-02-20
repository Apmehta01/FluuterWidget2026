import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomAvatar(
///   name: 'Arpan Mehta',
///   radius: 24,
///   backgroundColor: Colors.teal.shade100,
/// )
/// ```
class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
    required this.name,
    this.radius = 22,
    this.backgroundColor,
  });

  final String name;
  final double radius;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final initials = name
        .trim()
        .split(' ')
        .where((value) => value.isNotEmpty)
        .take(2)
        .map((part) => part[0].toUpperCase())
        .join();

    return CircleAvatar(
      radius: radius,
      backgroundColor:
          backgroundColor ?? Theme.of(context).colorScheme.primaryContainer,
      child: Text(
        initials,
        style: Theme.of(
          context,
        ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
