import 'package:flutter/material.dart';

import 'BookDetailPage.dart';

/// Liste de livres (placeholders : conteneurs avec fond uniquement).
class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  static const int _placeholderCount = 10;

  BoxDecoration _rowBackground(int index, Color primary) {
    final t = _placeholderCount <= 1
        ? 0.0
        : (index / (_placeholderCount - 1)).clamp(0.0, 1.0);
    final base = Color.lerp(
      Color.lerp(Colors.white, primary, 0.08)!,
      Color.lerp(const Color(0xFFF5EDE6), primary, 0.14)!,
      t,
    )!;
    return BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          base,
          Color.lerp(base, primary, 0.06)!,
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: primary.withValues(alpha: 0.08),
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text('Livres'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: _placeholderCount,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => BookDetailPage(index: index),
                ),
              );
            },
            child: Container(
              height: 88,
              decoration: _rowBackground(index, primary),
            ),
          );
        },
      ),
    );
  }
}
