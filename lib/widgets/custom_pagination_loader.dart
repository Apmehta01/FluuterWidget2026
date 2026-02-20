import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomPaginationLoader(
///   isLoading: false,
///   hasMore: true,
///   onLoadMore: () {},
/// )
/// ```
class CustomPaginationLoader extends StatelessWidget {
  const CustomPaginationLoader({
    super.key,
    required this.isLoading,
    required this.hasMore,
    required this.onLoadMore,
  });

  final bool isLoading;
  final bool hasMore;
  final VoidCallback onLoadMore;

  @override
  Widget build(BuildContext context) {
    if (!hasMore) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Center(child: Text('No more items')),
      );
    }

    if (isLoading) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: OutlinedButton(
          onPressed: onLoadMore,
          child: const Text('Load More'),
        ),
      ),
    );
  }
}
