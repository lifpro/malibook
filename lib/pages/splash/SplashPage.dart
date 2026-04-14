import 'package:flutter/material.dart';
import 'package:malibook/pages/home/HomePage.dart';

class SpashPage extends StatefulWidget {
  const SpashPage({super.key});

  @override
  State<SpashPage> createState() => _SpashPageState();
}

class _SpashPageState extends State<SpashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.lerp(Colors.white, Theme.of(context).primaryColor, 0.06)!,
              Color.lerp(
                const Color(0xFFFFF8F0),
                Theme.of(context).primaryColor,
                0.12,
              )!,
              Color.lerp(
                const Color(0xFFF5EDE6),
                Theme.of(context).primaryColor,
                0.08,
              )!,
            ],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                right: -MediaQuery.of(context).size.width * 0.15,
                top: MediaQuery.of(context).size.height * 0.08,
                child: Icon(
                  Icons.auto_stories_rounded,
                  size: 180,
                  color: Theme.of(context).primaryColor.withValues(alpha: 0.06),
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'MaliBook',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.2,
                        color: Theme.of(context).primaryColor,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Vos livres, votre bibliothèque',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.brown.shade700.withValues(alpha: 0.75),
                        letterSpacing: 0.3,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder<void>(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    const HomaPage(),
                            transitionsBuilder:
                                (
                                  context,
                                  animation,
                                  secondaryAnimation,
                                  child,
                                ) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                            transitionDuration: const Duration(
                              milliseconds: 450,
                            ),
                          ),
                        );
                      },
                      child: Text("Skip"),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 48,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 28,
                        height: 28,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: Theme.of(
                            context,
                          ).primaryColor.withValues(alpha: 0.65),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Chargement…',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.brown.shade600.withValues(alpha: 0.55),
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
