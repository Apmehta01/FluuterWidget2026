import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomRatingBar(
///   rating: 3,
///   maxRating: 5,
///   onRatingChanged: (rating) {},
///   activeColor: Colors.amber,
/// )
/// ```
class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.onRatingChanged,
    this.activeColor = Colors.amber,
  });

  final int rating;
  final int maxRating;
  final ValueChanged<int>? onRatingChanged;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(maxRating, (index) {
        final starIndex = index + 1;
        return IconButton(
          visualDensity: VisualDensity.compact,
          icon: Icon(
            starIndex <= rating
                ? Icons.star_rounded
                : Icons.star_border_rounded,
            color: starIndex <= rating ? activeColor : Colors.grey,
          ),
          onPressed: onRatingChanged == null
              ? null
              : () => onRatingChanged!(starIndex),
        );
      }),
    );
  }
}
