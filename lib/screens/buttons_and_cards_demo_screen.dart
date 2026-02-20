import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ButtonsAndCardsDemoScreen extends StatelessWidget {
  const ButtonsAndCardsDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons & Cards')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomTextView(
            'CustomButton',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CustomButton(
                label: 'Primary',
                icon: Icons.check,
                onPressed: () {},
              ),
              CustomButton(
                label: 'Outlined',
                isOutlined: true,
                onPressed: () {},
              ),
              const CustomButton(
                label: 'Loading',
                isLoading: true,
                onPressed: null,
              ),
            ],
          ),
          const SizedBox(height: 24),
          const CustomTextView(
            'CustomCardView',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 12),
          const CustomCardView(
            title: 'Profile Completion',
            subtitle: 'Finish your profile to unlock all features.',
            leadingIcon: Icons.account_circle_outlined,
            trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16),
          ),
          const CustomCardView(
            title: 'Security Settings',
            subtitle: 'Enable two-factor authentication for safety.',
            leadingIcon: Icons.security_rounded,
            trailing: Icon(Icons.shield_outlined),
          ),
        ],
      ),
    );
  }
}
