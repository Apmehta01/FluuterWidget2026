import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import 'buttons_and_cards_demo_screen.dart';
import 'content_and_layout_demo_screen.dart';
import 'input_and_feedback_demo_screen.dart';
import 'listview_demo_screen.dart';
import 'misc_widgets_demo_screen.dart';
import 'navigation_widgets_demo_screen.dart';
import 'selection_widgets_demo_screen.dart';
import 'state_widgets_demo_screen.dart';
import 'text_and_input_demo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      (
        'Text & Input Widgets',
        'CustomTextView and CustomTextField examples',
        Icons.text_fields,
        const TextAndInputDemoScreen(),
      ),
      (
        'Buttons & Cards',
        'CustomButton and CustomCardView examples',
        Icons.smart_button,
        const ButtonsAndCardsDemoScreen(),
      ),
      (
        'ListView Demo Screen',
        'Beautiful list UI using common widgets',
        Icons.view_list_rounded,
        const ListViewDemoScreen(),
      ),
      (
        'Other Common Widgets',
        'Chip, Avatar, Loader and more',
        Icons.widgets_rounded,
        const MiscWidgetsDemoScreen(),
      ),
      (
        'Navigation Widgets',
        'CustomAppBar, CustomTabBar, Drawer, BottomNav',
        Icons.navigation,
        const NavigationWidgetsDemoScreen(),
      ),
      (
        'Selection Widgets',
        'Dropdown, Checkbox, RadioGroup and SwitchTile',
        Icons.checklist_rounded,
        const SelectionWidgetsDemoScreen(),
      ),
      (
        'Input & Feedback Widgets',
        'Date, Time, Search, OTP, Rating, Dialog, Sheet, Snackbar',
        Icons.feedback_outlined,
        const InputAndFeedbackDemoScreen(),
      ),
      (
        'Content & Layout Widgets',
        'Image, Carousel, Expansion, Grid, Form, Timeline, Stepper',
        Icons.dashboard_customize_outlined,
        const ContentAndLayoutDemoScreen(),
      ),
      (
        'State Widgets',
        'Empty, Error, Shimmer and Pagination Loader',
        Icons.data_saver_off_outlined,
        const StateWidgetsDemoScreen(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Common Widgets Demo')),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFEFF7FF), Color(0xFFF8F9FB)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return CustomCardView(
              title: item.$1,
              subtitle: item.$2,
              leadingIcon: item.$3,
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => item.$4),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
