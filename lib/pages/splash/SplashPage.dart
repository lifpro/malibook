import 'package:flutter/material.dart';

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
        child: Container(),
      ),
    );
  }
}
