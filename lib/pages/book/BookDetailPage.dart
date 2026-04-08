import 'package:flutter/material.dart';

/// Détail d’un livre (UI placeholder, sans modèle de données).
class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key, required this.index});

  final int index;

  static const int _paletteSteps = 10;

  BoxDecoration _headerDecoration(Color primary) {
    final step = index % _paletteSteps;
    final t = _paletteSteps <= 1
        ? 0.0
        : (step / (_paletteSteps - 1)).clamp(0.0, 1.0);
    final base = Color.lerp(
      Color.lerp(Colors.white, primary, 0.08)!,
      Color.lerp(const Color(0xFFF5EDE6), primary, 0.18)!,
      t,
    )!;
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          base,
          Color.lerp(base, primary, 0.12)!,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            pinned: true,
            backgroundColor: primary,
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Détail',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  shadows: [Shadow(blurRadius: 8, color: Colors.black26)],
                ),
              ),
              centerTitle: true,
              background: DecoratedBox(
                decoration: _headerDecoration(primary),
                child: SafeArea(
                  child: Center(
                    child: Icon(
                      Icons.menu_book_rounded,
                      size: 88,
                      color: primary.withValues(alpha: 0.35),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _block(primary),
                const SizedBox(height: 14),
                _block(primary, height: 120),
                const SizedBox(height: 14),
                Row(
                  children: [
                    Expanded(child: _block(primary, height: 72)),
                    const SizedBox(width: 12),
                    Expanded(child: _block(primary, height: 72)),
                  ],
                ),
                const SizedBox(height: 14),
                _block(primary, height: 160),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _block(Color primary, {double height = 96}) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.lerp(Colors.grey.shade100, primary, 0.04)!,
            Color.lerp(Colors.grey.shade200, primary, 0.07)!,
          ],
        ),
        border: Border.all(color: primary.withValues(alpha: 0.12)),
      ),
    );
  }
}
