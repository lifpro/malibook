import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final TextEditingController _searchController = TextEditingController();

  static const int _horizontalCount = 5;

  static const List<List<Color>> _horizontalGradients = [
    [Color(0xFFE8C4A8), Color(0xFFD4A574)],
    [Color(0xFFC8D8E8), Color(0xFFA8C0D8)],
    [Color(0xFFE8D4E0), Color(0xFFD8B8C8)],
    [Color(0xFFD8E8D4), Color(0xFFB8D4B0)],
    [Color(0xFFE8E0D4), Color(0xFFD4C8A8)],
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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

  Widget _welcomeSection(Color primary) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: _featuredDecoration(primary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          Text(
            'Bienvenue sur MaliBook',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2,
              color: Colors.brown.shade900,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Votre espace pour explorer les livres et enrichir votre bibliothèque.',
            style: TextStyle(
              fontSize: 14,
              height: 1.4,
              color: Colors.brown.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchField(Color primary) {
    final borderRadius = BorderRadius.circular(14);

    return TextField(
      controller: _searchController,
      textInputAction: TextInputAction.search,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Rechercher un livre, un auteur…',
        prefixIcon: Icon(
          Icons.search_rounded,
          color: primary.withValues(alpha: 0.75),
        ),
        suffixIcon: ValueListenableBuilder<TextEditingValue>(
          valueListenable: _searchController,
          builder: (context, value, _) {
            if (value.text.isEmpty) {
              return const SizedBox.shrink();
            }
            return IconButton(
              tooltip: 'Effacer',
              icon: Icon(Icons.clear_rounded, color: Colors.brown.shade500),
              onPressed: () => _searchController.clear(),
            );
          },
        ),
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: const EdgeInsets.symmetric(vertical: 14),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: primary.withValues(alpha: 0.2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: primary.withValues(alpha: 0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: primary, width: 1.5),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(backgroundColor: primary, title: const Text('Accueil')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _welcomeSection(primary),
          const SizedBox(height: 16),
          _searchField(primary),
          const SizedBox(height: 22),
          Text(
            'Nouveautés',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 10),
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
          Text(
            'Meilleures ventes',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade800,
            ),
          ),
          const SizedBox(height: 10),
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
