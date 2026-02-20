import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputAndFeedbackDemoScreen extends StatefulWidget {
  const InputAndFeedbackDemoScreen({super.key});

  @override
  State<InputAndFeedbackDemoScreen> createState() =>
      _InputAndFeedbackDemoScreenState();
}

class _InputAndFeedbackDemoScreenState
    extends State<InputAndFeedbackDemoScreen> {
  final TextEditingController _searchController = TextEditingController();
  int _rating = 3;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Input & Feedback Widgets'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomDatePickerField(label: 'Select date'),
          const SizedBox(height: 12),
          const CustomTimePickerField(label: 'Select time'),
          const SizedBox(height: 12),
          CustomSearchBar(controller: _searchController, onChanged: (_) {}),
          const SizedBox(height: 12),
          const CustomOTPField(length: 4),
          const SizedBox(height: 12),
          Row(
            children: [
              const Text('Rate: '),
              CustomRatingBar(
                rating: _rating,
                onRatingChanged: (value) => setState(() => _rating = value),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CustomButton(
                label: 'Show Dialog',
                onPressed: () {
                  CustomDialog.show(
                    context,
                    title: 'Confirm Action',
                    message: 'This is a reusable custom dialog.',
                    cancelText: 'Cancel',
                  );
                },
              ),
              CustomButton(
                label: 'Bottom Sheet',
                isOutlined: true,
                onPressed: () {
                  CustomBottomSheet.show(
                    context,
                    title: 'Action Options',
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        ListTile(
                          leading: Icon(Icons.share_outlined),
                          title: Text('Share'),
                        ),
                        ListTile(
                          leading: Icon(Icons.copy_outlined),
                          title: Text('Copy Link'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              CustomButton(
                label: 'SnackBar',
                onPressed: () {
                  CustomSnackbar.show(
                    context,
                    message: 'This is a custom snackbar',
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              CustomBadge(count: 9, child: Icon(Icons.mail_outline, size: 32)),
              SizedBox(width: 16),
              CustomBadge(
                count: 3,
                child: Icon(Icons.notifications_none, size: 32),
              ),
            ],
          ),
          const CustomDivider(),
        ],
      ),
    );
  }
}
