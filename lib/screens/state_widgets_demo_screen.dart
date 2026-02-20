import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class StateWidgetsDemoScreen extends StatefulWidget {
  const StateWidgetsDemoScreen({super.key});

  @override
  State<StateWidgetsDemoScreen> createState() => _StateWidgetsDemoScreenState();
}

class _StateWidgetsDemoScreenState extends State<StateWidgetsDemoScreen> {
  final List<String> _items = List.generate(8, (index) => 'Item ${index + 1}');
  bool _isLoadingMore = false;
  bool _hasMore = true;

  Future<void> _loadMore() async {
    setState(() => _isLoadingMore = true);
    await Future<void>.delayed(const Duration(milliseconds: 700));

    setState(() {
      _items.addAll(
        List.generate(4, (index) => 'Item ${_items.length + index + 1}'),
      );
      _isLoadingMore = false;
      if (_items.length >= 20) {
        _hasMore = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'State Widgets'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          CustomEmptyState(
            title: 'No Messages',
            subtitle: 'Your inbox is currently empty.',
            action: CustomButton(label: 'Refresh', onPressed: () {}),
          ),
          const SizedBox(height: 12),
          CustomErrorState(
            title: 'Network Error',
            subtitle: 'Unable to load latest data.',
            onRetry: () {},
          ),
          const SizedBox(height: 12),
          const CustomTextView(
            'CustomShimmerLoader',
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 8),
          const CustomShimmerLoader(height: 16),
          const SizedBox(height: 8),
          const CustomShimmerLoader(height: 16, width: 220),
          const SizedBox(height: 14),
          const CustomTextView(
            'CustomPaginationLoader',
            fontWeight: FontWeight.w700,
          ),
          const SizedBox(height: 8),
          ..._items.map(
            (item) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.circle, size: 10),
              title: Text(item),
            ),
          ),
          CustomPaginationLoader(
            isLoading: _isLoadingMore,
            hasMore: _hasMore,
            onLoadMore: _loadMore,
          ),
        ],
      ),
    );
  }
}
