import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomShimmerLoader(
///   width: 220,
///   height: 14,
///   borderRadius: 8,
/// )
/// ```
class CustomShimmerLoader extends StatefulWidget {
  const CustomShimmerLoader({
    super.key,
    this.width = double.infinity,
    this.height = 16,
    this.borderRadius = 8,
  });

  final double width;
  final double height;
  final double borderRadius;

  @override
  State<CustomShimmerLoader> createState() => _CustomShimmerLoaderState();
}

class _CustomShimmerLoaderState extends State<CustomShimmerLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final color = Color.lerp(
          const Color(0xFFE5E7EB),
          const Color(0xFFF3F4F6),
          _controller.value,
        )!;
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        );
      },
    );
  }
}
