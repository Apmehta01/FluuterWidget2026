import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomImageView(
///   imageUrl: 'https://picsum.photos/400/260',
///   assetPath: '',
///   width: double.infinity,
///   height: 160,
///   fit: BoxFit.cover,
///   borderRadius: 12,
/// )
/// ```
class CustomImageView extends StatelessWidget {
  const CustomImageView({
    super.key,
    this.imageUrl,
    this.assetPath,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = 12,
  });

  final String? imageUrl;
  final String? assetPath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (imageUrl != null && imageUrl!.isNotEmpty) {
      child = Image.network(
        imageUrl!,
        width: width,
        height: height,
        fit: fit,
        loadingBuilder: (context, image, progress) {
          if (progress == null) {
            return image;
          }
          return SizedBox(
            width: width,
            height: height,
            child: const Center(child: CircularProgressIndicator()),
          );
        },
        errorBuilder: (context, error, stackTrace) => _placeholder(),
      );
    } else if (assetPath != null && assetPath!.isNotEmpty) {
      child = Image.asset(
        assetPath!,
        width: width,
        height: height,
        fit: fit,
        errorBuilder: (context, error, stackTrace) => _placeholder(),
      );
    } else {
      child = _placeholder();
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: child,
    );
  }

  Widget _placeholder() {
    return Container(
      width: width,
      height: height,
      color: const Color(0xFFE2E8F0),
      alignment: Alignment.center,
      child: const Icon(Icons.image_not_supported_outlined),
    );
  }
}
