import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const List<List<Color>> _gradients = [
    [Color(0xFFE8C4A8), Color(0xFFD4A574)],
    [Color(0xFFC8D8E8), Color(0xFFA8C0D8)],
    [Color(0xFFE8D4E0), Color(0xFFD8B8C8)],
    [Color(0xFFD8E8D4), Color(0xFFB8D4B0)],
    [Color(0xFFE8E0D4), Color(0xFFD4C8A8)],
  ];

  BoxDecoration _blockDecoration(int index, Color primary) {
    final colors = _gradients[index % _gradients.length];
    return BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.lerp(colors[0], primary, 0.06)!,
          Color.lerp(colors[1], primary, 0.1)!,
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: colors[1].withValues(alpha: 0.25),
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  BoxDecoration _headerDecoration(Color primary) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.lerp(Colors.white, primary, 0.1)!,
          Color.lerp(const Color(0xFFF0E6DC), primary, 0.2)!,
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: primary.withValues(alpha: 0.12),
          blurRadius: 12,
          offset: const Offset(0, 4),
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
        title: const Text('Mon profil'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 140,
            decoration: _headerDecoration(primary),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primary.withValues(alpha: 0.18),
                ),
                child: Icon(
                  Icons.person_rounded,
                  size: 56,
                  color: primary.withValues(alpha: 0.75),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: _blockDecoration(0, primary),
                  child: Center(
                    child: Icon(
                      Icons.book_rounded,
                      size: 40,
                      color: Colors.brown.shade800.withValues(alpha: 0.35),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: _blockDecoration(1, primary),
                  child: Center(
                    child: Icon(
                      Icons.book_rounded,
                      size: 40,
                      color: Colors.brown.shade800.withValues(alpha: 0.35),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            height: 88,
            decoration: _blockDecoration(2, primary),
            child: Center(
              child: Icon(
                Icons.settings_rounded,
                size: 36,
                color: Colors.brown.shade800.withValues(alpha: 0.35),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
