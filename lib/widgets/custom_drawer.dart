import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomDrawerItem(
///   title: 'Home',
///   icon: Icons.home_outlined,
///   onTap: () {},
/// )
/// ```
class CustomDrawerItem {
  const CustomDrawerItem({required this.title, required this.icon, this.onTap});

  final String title;
  final IconData icon;
  final VoidCallback? onTap;
}

/// Usage Example:
/// ```dart
/// CustomDrawer(
///   headerTitle: 'Arpan Mehta',
///   headerSubtitle: 'arpan@example.com',
///   items: [
///     CustomDrawerItem(title: 'Home', icon: Icons.home_outlined, onTap: () {}),
///     CustomDrawerItem(title: 'Settings', icon: Icons.settings_outlined, onTap: () {}),
///   ],
/// )
/// ```
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.headerTitle,
    required this.headerSubtitle,
    required this.items,
  });

  final String headerTitle;
  final String headerSubtitle;
  final List<CustomDrawerItem> items;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(headerTitle),
            accountEmail: Text(headerSubtitle),
            currentAccountPicture: CircleAvatar(
              child: Text(
                headerTitle.isNotEmpty ? headerTitle[0].toUpperCase() : 'U',
              ),
            ),
          ),
          ...items.map(
            (item) => ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              onTap: item.onTap,
            ),
          ),
        ],
      ),
    );
  }
}
