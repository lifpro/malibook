import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  static const int _horizontalCount = 5;

  static const List<List<Color>> _horizontalGradients = [
    [Color(0xFFE8C4A8), Color(0xFFD4A574)],
    [Color(0xFFC8D8E8), Color(0xFFA8C0D8)],
    [Color(0xFFE8D4E0), Color(0xFFD8B8C8)],
    [Color(0xFFD8E8D4), Color(0xFFB8D4B0)],
    [Color(0xFFE8E0D4), Color(0xFFD4C8A8)],
  ];

  BoxDecoration _featuredDecoration(Color primary) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.lerp(Colors.white, primary, 0.12)!,
          Color.lerp(const Color(0xFFF0E6DC), primary, 0.22)!,
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: primary.withValues(alpha: 0.15),
          blurRadius: 12,
          offset: const Offset(0, 4),
        ),
      ],
    );
  }

  BoxDecoration _cardDecoration(int index) {
    final colors = _horizontalGradients[index % _horizontalGradients.length];
    return BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: colors,
      ),
      boxShadow: [
        BoxShadow(
          color: colors[1].withValues(alpha: 0.45),
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
        title: const Text('Accueil'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Container(
            height: 160,
            decoration: _featuredDecoration(primary),
            child: Center(
              child: Icon(
                Icons.auto_stories_rounded,
                size: 72,
                color: primary.withValues(alpha: 0.45),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _horizontalCount,
              itemBuilder: (_, i) {
                return Container(
                  width: 148,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: _cardDecoration(i),
                  child: Center(
                    child: Icon(
                      Icons.menu_book_rounded,
                      size: 56,
                      color: Colors.brown.shade800.withValues(alpha: 0.35),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
