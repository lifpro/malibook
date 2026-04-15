import 'package:flutter/material.dart';
import 'package:malibook/widget/ui/MyAppBar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  /// Livre mis en avant sur la carte d’accueil (pas encore branché sur un modèle).
  static const String _featuredTitle = 'Carllet sauve la plante';
  static const String _featuredAuthor = 'Aminata Diallo';
  static const String _featuredPublished = 'Paru en avril 2024';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Accueil'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Card(
              elevation: 3,
              shadowColor: Colors.black26,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () {
                      print('Tp sur title');
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 22, 20, 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(
                                context,
                              ).primaryColor.withOpacity(0.14),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Icon(
                                Icons.auto_stories_rounded,
                                color: Theme.of(context).primaryColor,
                                size: 28,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bienvenue sur MaliBook',
                                  style: Theme.of(context).textTheme.titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -0.2,
                                        color: const Color(0xFF1C1B1F),
                                      ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Votre espace pour explorer les livres et enrichir votre bibliothèque.',
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        color: const Color(0xFF49454F),
                                        height: 1.45,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 10,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          final overlayHeight = constraints.maxHeight * 0.52;
                          return Stack(
                            fit: StackFit.expand,
                            children: [
                              Ink.image(
                                image: AssetImage('assets/images/livres/1.png'),
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    print('Tp sur image');
                                  },
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                height: overlayHeight,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withOpacity(0.22),
                                        Colors.black.withOpacity(0.72),
                                        Colors.black.withOpacity(0.9),
                                      ],
                                      stops: const [0.0, 0.22, 0.55, 1.0],
                                    ),
                                  ),
                                  child: SizedBox.expand(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        18,
                                        20,
                                        18,
                                        20,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _featuredTitle,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall
                                                ?.copyWith(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w800,
                                                  height: 1.15,
                                                  letterSpacing: -0.4,
                                                  shadows: const [
                                                    Shadow(
                                                      color: Colors.black45,
                                                      offset: Offset(0, 1),
                                                      blurRadius: 8,
                                                    ),
                                                  ],
                                                ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            _featuredAuthor,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  color: Colors.white
                                                      .withOpacity(0.92),
                                                  fontWeight: FontWeight.w500,
                                                  shadows: const [
                                                    Shadow(
                                                      color: Colors.black38,
                                                      offset: Offset(0, 1),
                                                      blurRadius: 4,
                                                    ),
                                                  ],
                                                ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            _featuredPublished,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall
                                                ?.copyWith(
                                                  color: Colors.white
                                                      .withOpacity(0.78),
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.2,
                                                  shadows: const [
                                                    Shadow(
                                                      color: Colors.black38,
                                                      offset: Offset(0, 1),
                                                      blurRadius: 4,
                                                    ),
                                                  ],
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
