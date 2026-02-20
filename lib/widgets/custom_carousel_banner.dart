import 'package:flutter/material.dart';

import 'custom_image_view.dart';

/// Usage Example:
/// ```dart
/// CustomCarouselBanner(
///   imageUrls: [
///     'https://picsum.photos/seed/1/800/300',
///     'https://picsum.photos/seed/2/800/300',
///   ],
///   height: 180,
/// )
/// ```
class CustomCarouselBanner extends StatefulWidget {
  const CustomCarouselBanner({
    super.key,
    required this.imageUrls,
    this.height = 180,
  });

  final List<String> imageUrls;
  final double height;

  @override
  State<CustomCarouselBanner> createState() => _CustomCarouselBannerState();
}

class _CustomCarouselBannerState extends State<CustomCarouselBanner> {
  final PageController _controller = PageController();
  int _index = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.height,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.imageUrls.length,
            onPageChanged: (value) => setState(() => _index = value),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CustomImageView(
                imageUrl: widget.imageUrls[index],
                height: widget.height,
                width: double.infinity,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imageUrls.length,
            (dotIndex) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: _index == dotIndex ? 18 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: _index == dotIndex
                    ? Theme.of(context).colorScheme.primary
                    : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
