import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomFormSection(
///   title: 'Personal Information',
///   children: const [
///     CustomTextField(labelText: 'Name'),
///     SizedBox(height: 10),
///     CustomTextField(labelText: 'Email'),
///   ],
/// )
/// ```
class CustomFormSection extends StatelessWidget {
  const CustomFormSection({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }
}
