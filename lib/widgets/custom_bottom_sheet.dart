import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomBottomSheet.show(
///   context,
///   title: 'Action Menu',
///   child: Column(
///     mainAxisSize: MainAxisSize.min,
///     children: const [Text('Share'), Text('Delete')],
///   ),
/// )
/// ```
class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required Widget child,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (_) => CustomBottomSheet(title: title, child: child),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}
