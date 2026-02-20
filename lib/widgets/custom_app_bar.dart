import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomAppBar(
///   title: 'Dashboard',
///   actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
///   leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
///   bottom: PreferredSize(
///     preferredSize: Size.fromHeight(48),
///     child: CustomTabBar(tabs: ['Home', 'Tasks']),
///   ),
///   backgroundColor: Colors.white,
///   centerTitle: false,
/// )
/// ```
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.bottom,
    this.backgroundColor,
    this.centerTitle = false,
  });

  final String title;
  final List<Widget>? actions;
  final Widget? leading;
  final PreferredSizeWidget? bottom;
  final Color? backgroundColor;
  final bool centerTitle;

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: actions,
      leading: leading,
      bottom: bottom,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
    );
  }
}
