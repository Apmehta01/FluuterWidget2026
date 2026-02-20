import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomExpansionTile(
///   title: 'Frequently Asked Questions',
///   subtitle: 'Tap to expand',
///   leading: Icon(Icons.help_outline),
///   children: const [Text('Answer line 1')],
/// )
/// ```
class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
    this.subtitle,
    this.leading,
  });

  final String title;
  final String? subtitle;
  final Widget? leading;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ExpansionTile(
        title: Text(title),
        subtitle: subtitle == null ? null : Text(subtitle!),
        leading: leading,
        childrenPadding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
        children: children,
      ),
    );
  }
}
