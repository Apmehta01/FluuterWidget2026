import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomInfoTile(
///   label: 'Role',
///   value: 'Flutter Developer',
///   leading: Icon(Icons.work_outline),
/// )
/// ```
class CustomInfoTile extends StatelessWidget {
  const CustomInfoTile({
    super.key,
    required this.label,
    required this.value,
    this.leading,
  });

  final String label;
  final String value;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: leading,
      title: Text(label),
      trailing: Text(
        value,
        style: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
