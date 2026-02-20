import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const WidgetDemoApp());
}

class WidgetDemoApp extends StatelessWidget {
  const WidgetDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xFF0E7490),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Common Widgets',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme.surface,
          foregroundColor: colorScheme.onSurface,
          centerTitle: false,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
