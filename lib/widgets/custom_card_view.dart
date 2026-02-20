import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomCardView(
///   title: 'Profile Completion',
///   subtitle: 'Finish your profile setup.',
///   leadingIcon: Icons.person_outline,
///   trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16),
///   onTap: () {},
///   padding: EdgeInsets.all(16),
///   margin: EdgeInsets.symmetric(vertical: 8),
///   backgroundColor: Colors.white,
/// )
/// ```
class CustomCardView extends StatelessWidget {
  const CustomCardView({
    super.key,
    required this.title,
    required this.subtitle,
    this.leadingIcon,
    this.trailing,
    this.onTap,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.symmetric(vertical: 8),
    this.backgroundColor,
  });

  final String title;
  final String subtitle;
  final IconData? leadingIcon;
  final Widget? trailing;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin,
      color: backgroundColor,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: padding,
          child: Row(
            children: [
              if (leadingIcon != null) ...[
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    leadingIcon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: Colors.black54),
                    ),
                  ],
                ),
              ),
              trailing ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
