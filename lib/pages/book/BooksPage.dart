import 'package:flutter/material.dart';
import 'package:malibook/models/Livres.dart';
import 'package:malibook/widget/ui/MyAppBar.dart';

import 'BookDetailPage.dart';

/// Liste de livres (placeholders : conteneurs avec fond uniquement).
class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  static List<Livres> livres = [
    Livres(
      id: '1',
      title: 'Les Misérables',
      author: 'Victor Hugo',
      description:
          'Épopée sociale autour de Jean Valjean et de la France du XIXᵉ siècle.',
      image: 'assets/images/livres/1.png',
      price: '10000',
      category: 'Roman classique',
      createdAt: '1862-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '2',
      title: 'L’Étranger',
      author: 'Albert Camus',
      description:
          'Meursault, le soleil et l’absurde : un des romans majeurs du XXᵉ siècle.',
      image: 'assets/images/livres/1.png',
      price: '20000',
      category: 'Roman moderne',
      createdAt: '1942-06-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '3',
      title: 'Le Petit Prince',
      author: 'Antoine de Saint-Exupéry',
      description:
          'Conte philosophique sur l’amitié, la perte et ce qui est essentiel.',
      image: 'assets/images/livres/1.png',
      price: '30000',
      category: 'Conte',
      createdAt: '1943-04-06',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '4',
      title: 'Notre-Dame de Paris',
      author: 'Victor Hugo',
      description:
          'Quasimodo, Esmeralda et la cathédrale au cœur du Paris médiéval.',
      image: 'assets/images/livres/1.png',
      price: '40000',
      category: 'Roman classique',
      createdAt: '1831-03-16',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '5',
      title: 'Germinal',
      author: 'Émile Zola',
      description:
          'La fosse, la révolte des mineurs et la condition ouvrière au XIXᵉ siècle.',
      image: 'assets/images/livres/1.png',
      price: '50000',
      category: 'Naturalisme',
      createdAt: '1885-03-23',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '6',
      title: 'Madame Bovary',
      author: 'Gustave Flaubert',
      description:
          'Emma Bovary entre rêve romanesque et étouffement provincial.',
      image: 'assets/images/livres/1.png',
      price: '60000',
      category: 'Roman réaliste',
      createdAt: '1856-12-15',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '7',
      title: 'La Peste',
      author: 'Albert Camus',
      description:
          'Oran sous la peste : solidarité, responsabilité et résistance au mal.',
      image: 'assets/images/livres/1.png',
      price: '70000',
      category: 'Roman moderne',
      createdAt: '1947-06-10',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '8',
      title: 'L’Écume des jours',
      author: 'Boris Vian',
      description:
          'Colin, Chloé et la pianocktail : amour, jazz et poésie absurde.',
      image: 'assets/images/livres/1.png',
      price: '80000',
      category: 'Roman',
      createdAt: '1947-03-12',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '9',
      title: 'Bonjour tristesse',
      author: 'Françoise Sagan',
      description:
          'Un été sur la Côte d’Azur : désir, manipulation et premier chagrin.',
      image: 'assets/images/livres/1.png',
      price: '90000',
      category: 'Roman',
      createdAt: '1954-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '10',
      title: 'Le Père Goriot',
      author: 'Honoré de Balzac',
      description:
          'La pension Vauquer et la corruption par l’argent et l’ambition.',
      image: 'assets/images/livres/1.png',
      price: '100000',
      category: 'Roman classique',
      createdAt: '1835-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '11',
      title: 'Une si longue lettre',
      author: 'Mariama Bâ',
      description:
          'Ramatoulaye écrit à Aissatou : deuil, polygamie et sororité au Sénégal.',
      image: 'assets/images/livres/1.png',
      price: '110000',
      category: 'Roman africain',
      createdAt: '1979-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '12',
      title: 'Petit Pays',
      author: 'Gaël Faye',
      description:
          'Enfance au Burundi, musique et bascule dans la guerre du Rwanda.',
      image: 'assets/images/livres/1.png',
      price: '120000',
      category: 'Roman contemporain',
      createdAt: '2016-08-18',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '13',
      title: 'L’Enfant noir',
      author: 'Camara Laye',
      description:
          'Souvenirs d’enfance en Guinée, initiation et départ vers l’école coloniale.',
      image: 'assets/images/livres/1.png',
      price: '130000',
      category: 'Autobiographie',
      createdAt: '1953-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '14',
      title: 'Les Soleils des Indépendances',
      author: 'Ahmadou Kourouma',
      description:
          'Fama et le désenchantement du règne après l’indépendance africaine.',
      image: 'assets/images/livres/1.png',
      price: '140000',
      category: 'Roman africain',
      createdAt: '1968-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '15',
      title: 'L’Aventure ambiguë',
      author: 'Cheikh Hamidou Kane',
      description:
          'Samba Diallo entre école coranique et université française : le choix identitaire.',
      image: 'assets/images/livres/1.png',
      price: '150000',
      category: 'Roman africain',
      createdAt: '1961-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '16',
      title: 'Le monde s’effondre',
      author: 'Chinua Achebe',
      description:
          'Okonkwo et son village igbo face à la colonisation et au choc des cultures.',
      image: 'assets/images/livres/1.png',
      price: '160000',
      category: 'Roman africain',
      createdAt: '1958-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '17',
      title: 'Les Bouts de bois de Dieu',
      author: 'Ousmane Sembène',
      description:
          'La grève des cheminots du Dakar-Niger et la lutte contre le colonialisme.',
      image: 'assets/images/livres/1.png',
      price: '170000',
      category: 'Roman africain',
      createdAt: '1960-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '18',
      title: 'Le Vieux Nègre et la médaille',
      author: 'Ferdinand Oyono',
      description:
          'Meka, ancien combattant décoré, confronté au mépris du pouvoir colonial.',
      image: 'assets/images/livres/1.png',
      price: '180000',
      category: 'Roman africain',
      createdAt: '1956-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '19',
      title: 'Chants d’ombre',
      author: 'Léopold Sédar Senghor',
      description:
          'Recueil fondateur de la négritude : nostalgie, métissage et célébration de l’Afrique.',
      image: 'assets/images/livres/1.png',
      price: '190000',
      category: 'Poésie',
      createdAt: '1945-01-01',
      updatedAt: '2024-03-12',
    ),
    Livres(
      id: '20',
      title: 'Les Contes d’Amadou Koumba',
      author: 'Birago Diop',
      description:
          'Contes wolof transcrits avec humour et sagesse autour du griot Amadou Koumba.',
      image: 'assets/images/livres/1.png',
      price: '200000',
      category: 'Contes',
      createdAt: '1947-01-01',
      updatedAt: '2024-03-12',
    ),
  ];
  BoxDecoration _rowBackground(int index, Color primary) {
    final n = livres.length;
    final t = n <= 1 ? 0.0 : (index / (n - 1)).clamp(0.0, 1.0);
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
        colors: [base, Color.lerp(base, primary, 0.06)!],
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
      appBar: MyAppBar(title: 'Livres'),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: livres.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          return _BookListRow(
            book: livres[index],
            primary: primary,
            decoration: _rowBackground(index, primary),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => BookDetailPage(index: index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

String _formatPriceFcfa(String raw) {
  final digits = raw.replaceAll(RegExp(r'\D'), '');
  if (digits.isEmpty) return '$raw FCFA';
  final n = int.parse(digits);
  final s = n.toString();
  final buf = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) buf.write('\u202f');
    buf.write(s[i]);
  }
  return '${buf.toString()}\u202fFCFA';
}

class _BookListRow extends StatelessWidget {
  const _BookListRow({
    required this.book,
    required this.primary,
    required this.decoration,
    required this.onTap,
  });

  final Livres book;
  final Color primary;
  final BoxDecoration decoration;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final onSurface = theme.colorScheme.onSurface;
    final muted = theme.colorScheme.onSurface.withValues(alpha: 0.65);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Ink(
          decoration: decoration,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 8, 12),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      width: 78,
                      height: 112,
                      child: Image.asset(
                        book.image,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                        errorBuilder: (_, __, ___) => ColoredBox(
                          color: primary.withValues(alpha: 0.12),
                          child: Icon(
                            Icons.menu_book_rounded,
                            size: 40,
                            color: primary.withValues(alpha: 0.45),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          book.title,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            height: 1.25,
                            letterSpacing: -0.2,
                            color: onSurface,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          book.description,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: muted,
                            height: 1.35,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline_rounded,
                              size: 17,
                              color: muted,
                            ),
                            const SizedBox(width: 4),
                            Expanded(
                              child: Text(
                                book.author,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: muted,
                                  height: 1.2,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: primary.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            book.category,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: primary.withValues(alpha: 0.95),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        _formatPriceFcfa(book.price),
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          color: primary,
                          letterSpacing: -0.3,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: muted.withValues(alpha: 0.85),
                        size: 26,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
