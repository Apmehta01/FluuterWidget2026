import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class NavigationWidgetsDemoScreen extends StatefulWidget {
  const NavigationWidgetsDemoScreen({super.key});

  @override
  State<NavigationWidgetsDemoScreen> createState() =>
      _NavigationWidgetsDemoScreenState();
}

class _NavigationWidgetsDemoScreenState
    extends State<NavigationWidgetsDemoScreen>
    with TickerProviderStateMixin {
  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'Navigation Widgets',
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_outlined),
                ),
              ],
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(48),
                child: CustomTabBar(tabs: ['Overview', 'Samples', 'Notes']),
              ),
            ),
            drawer: CustomDrawer(
              headerTitle: 'Flutter Team',
              headerSubtitle: 'team@example.com',
              items: [
                CustomDrawerItem(
                  title: 'Home',
                  icon: Icons.home_outlined,
                  onTap: () => Navigator.pop(context),
                ),
                CustomDrawerItem(
                  title: 'Profile',
                  icon: Icons.person_outline,
                  onTap: () => Navigator.pop(context),
                ),
                CustomDrawerItem(
                  title: 'Settings',
                  icon: Icons.settings_outlined,
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
            bottomNavigationBar: CustomBottomNavigationBar(
              currentIndex: _bottomIndex,
              onTap: (value) => setState(() => _bottomIndex = value),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_outlined),
                  label: 'Dashboard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                ),
              ],
            ),
            body: const TabBarView(
              children: [
                _TabCard(
                  text:
                      'CustomAppBar + CustomTabBar + CustomDrawer + CustomBottomNavigationBar',
                ),
                _TabCard(text: 'Use these for app-level navigation patterns.'),
                _TabCard(text: 'All properties are reusable and configurable.'),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _TabCard extends StatelessWidget {
  const _TabCard({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomCardView(
          title: 'Navigation Demo',
          subtitle: text,
          leadingIcon: Icons.navigation_outlined,
        ),
      ),
    );
  }
}
