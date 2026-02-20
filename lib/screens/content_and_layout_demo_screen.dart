import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ContentAndLayoutDemoScreen extends StatefulWidget {
  const ContentAndLayoutDemoScreen({super.key});

  @override
  State<ContentAndLayoutDemoScreen> createState() =>
      _ContentAndLayoutDemoScreenState();
}

class _ContentAndLayoutDemoScreenState
    extends State<ContentAndLayoutDemoScreen> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final stepList = [
      Step(
        title: const Text('Account'),
        content: const Text('Create account and setup profile.'),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: const Text('Preferences'),
        content: const Text('Choose notifications and topics.'),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: const Text('Finish'),
        content: const Text('Review and complete onboarding.'),
        isActive: _currentStep >= 2,
      ),
    ];

    return Scaffold(
      appBar: const CustomAppBar(title: 'Content & Layout Widgets'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomTextView(
            'CustomImageView + CustomCarouselBanner',
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 10),
          const CustomImageView(
            imageUrl: 'https://picsum.photos/700/260',
            height: 160,
            width: double.infinity,
          ),
          const SizedBox(height: 10),
          const CustomCarouselBanner(
            imageUrls: [
              'https://picsum.photos/seed/1/800/300',
              'https://picsum.photos/seed/2/800/300',
              'https://picsum.photos/seed/3/800/300',
            ],
          ),
          const SizedBox(height: 14),
          const CustomTextView(
            'CustomExpansionTile',
            fontWeight: FontWeight.w700,
          ),
          const CustomExpansionTile(
            title: 'Project Overview',
            subtitle: 'Tap to expand details',
            leading: Icon(Icons.info_outline),
            children: [
              Text('This tile can show details, FAQs, or grouped settings.'),
            ],
          ),
          const SizedBox(height: 14),
          const CustomTextView(
            'CustomGridItemCard',
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 8),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
            children: const [
              CustomGridItemCard(title: 'Email', icon: Icons.mail_outline),
              CustomGridItemCard(
                title: 'Camera',
                icon: Icons.camera_alt_outlined,
              ),
              CustomGridItemCard(
                title: 'Calendar',
                icon: Icons.calendar_month_outlined,
              ),
            ],
          ),
          const SizedBox(height: 14),
          const CustomTextView(
            'CustomFormSection + CustomInfoTile',
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 8),
          const CustomFormSection(
            title: 'User Details',
            children: [
              CustomInfoTile(label: 'Name', value: 'Arpan Mehta'),
              CustomInfoTile(label: 'Role', value: 'Flutter Developer'),
              CustomInfoTile(label: 'Location', value: 'United States'),
            ],
          ),
          const SizedBox(height: 14),
          const CustomTextView(
            'CustomTimelineItem',
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 8),
          const CustomTimelineItem(
            title: 'Project Created',
            subtitle: 'Jan 2026',
          ),
          const CustomTimelineItem(title: 'MVP Released', subtitle: 'Feb 2026'),
          const CustomTimelineItem(
            title: 'Production Launch',
            subtitle: 'Planned',
            isLast: true,
          ),
          const SizedBox(height: 14),
          const CustomTextView('CustomStepper', fontWeight: FontWeight.w700),
          CustomStepper(
            steps: stepList,
            currentStep: _currentStep,
            onStepTapped: (value) => setState(() => _currentStep = value),
            onStepContinue: () {
              if (_currentStep < stepList.length - 1) {
                setState(() => _currentStep += 1);
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() => _currentStep -= 1);
              }
            },
          ),
        ],
      ),
    );
  }
}
