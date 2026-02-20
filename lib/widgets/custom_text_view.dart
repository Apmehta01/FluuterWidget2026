import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomTextView(
///   'Reusable title text',
///   fontSize: 18,
///   fontWeight: FontWeight.w700,
///   color: Colors.black87,
///   maxLines: 2,
///   overflow: TextOverflow.ellipsis,
///   textAlign: TextAlign.left,
///   letterSpacing: 0.2,
///   height: 1.3,
/// )
/// ```
class CustomTextView extends StatelessWidget {
  const CustomTextView(
    this.text, {
    super.key,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w500,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.letterSpacing,
    this.height,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final baseStyle = Theme.of(context).textTheme.bodyMedium;
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: baseStyle?.copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
      ),
    );
  }
}
