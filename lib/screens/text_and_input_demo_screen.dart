import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class TextAndInputDemoScreen extends StatefulWidget {
  const TextAndInputDemoScreen({super.key});

  @override
  State<TextAndInputDemoScreen> createState() => _TextAndInputDemoScreenState();
}

class _TextAndInputDemoScreenState extends State<TextAndInputDemoScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text & Input Widgets')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const CustomTextView(
            'CustomTextView',
            fontSize: 22,
            fontWeight: FontWeight.w700,
            height: 1.3,
          ),
          const SizedBox(height: 8),
          const CustomTextView(
            'Reusable text widget with common typography properties.',
            color: Colors.black54,
          ),
          const SizedBox(height: 20),
          const CustomTextView(
            'CustomTextField',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 12),
          CustomTextField(
            controller: _nameController,
            labelText: 'Full Name',
            hintText: 'Enter your name',
            prefixIcon: Icons.person_outline,
          ),
          const SizedBox(height: 12),
          CustomTextField(
            controller: _emailController,
            labelText: 'Email',
            hintText: 'name@email.com',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icons.email_outlined,
          ),
        ],
      ),
    );
  }
}
