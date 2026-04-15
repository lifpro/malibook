import 'package:flutter/material.dart';
import 'package:malibook/pages/book/BooksPage.dart';
import 'package:malibook/widget/ui/MyAppBar.dart';

class CatalogTab extends StatelessWidget {
  const CatalogTab({super.key});

  static const List<List<Color>> _gradients = [
    [Color(0xFFE8C4A8), Color(0xFFD4A574)],
    [Color(0xFFC8D8E8), Color(0xFFA8C0D8)],
    [Color(0xFFE8D4E0), Color(0xFFD8B8C8)],
    [Color(0xFFD8E8D4), Color(0xFFB8D4B0)],
    [Color(0xFFE8E0D4), Color(0xFFD4C8A8)],
    [Color(0xFFE0D8F0), Color(0xFFC8B8E0)],
  ];
  static const List<String> _categories = [
    'Roman classique',
    'Roman moderne',
    'Conte',
    'Naturalisme',
    'Science-fiction',
    'Fantasy',
    'Autres',
  ];
  BoxDecoration _cellDecoration(int index) {
    final colors = _gradients[index % _gradients.length];
    return BoxDecoration(
      borderRadius: BorderRadius.circular(14),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: colors,
      ),
      boxShadow: [
        BoxShadow(
          color: colors[1].withValues(alpha: 0.35),
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Catalogue'),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.72,
        ),
        itemCount: 6,
        itemBuilder: (_, i) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BooksPage()),
              );
            },
            child: Container(
              decoration: _cellDecoration(i),
              child: Center(child: Text(_categories[i])),
            ),
          );
        },
      ),
    );
  }
}
