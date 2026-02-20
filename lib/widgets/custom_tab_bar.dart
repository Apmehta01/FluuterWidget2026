import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomTabBar(
///   tabs: const ['Overview', 'Details', 'Reviews'],
/// )
/// ```
class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabs: tabs.map((title) => Tab(text: title)).toList(),
    );
  }
}
