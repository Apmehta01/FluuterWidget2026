import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomBottomNavigationBar(
///   currentIndex: 0,
///   items: const [
///     BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
///     BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
///   ],
///   onTap: (index) {},
///   type: BottomNavigationBarType.fixed,
/// )
/// ```
class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    required this.onTap,
    this.type = BottomNavigationBarType.fixed,
  });

  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final BottomNavigationBarType type;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: items,
      onTap: onTap,
      type: type,
    );
  }
}
