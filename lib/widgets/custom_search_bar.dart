import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomSearchBar(
///   controller: TextEditingController(),
///   hintText: 'Search users...',
///   onChanged: (value) {},
/// )
/// ```
class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    this.controller,
    this.hintText = 'Search...',
    this.onChanged,
  });

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
