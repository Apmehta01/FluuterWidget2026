import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomChip(
///   label: 'Flutter',
///   selected: true,
///   onTap: () {},
///   leading: Icons.flutter_dash,
/// )
/// ```
class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
    this.leading,
  });

  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final IconData? leading;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: selected,
      onSelected: (_) => onTap?.call(),
      avatar: leading == null ? null : Icon(leading, size: 18),
      label: Text(label),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}
