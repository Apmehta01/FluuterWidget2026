import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomSwitchTile(
///   title: 'Enable Notifications',
///   subtitle: 'Receive app updates',
///   value: true,
///   onChanged: (value) {},
/// )
/// ```
class CustomSwitchTile extends StatelessWidget {
  const CustomSwitchTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.subtitle,
  });

  final String title;
  final String? subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(title),
      subtitle: subtitle == null ? null : Text(subtitle!),
      value: value,
      onChanged: onChanged,
      contentPadding: EdgeInsets.zero,
    );
  }
}
