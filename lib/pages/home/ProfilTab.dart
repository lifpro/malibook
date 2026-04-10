import 'package:flutter/material.dart';
import 'package:malibook/widget/ui/MyAppBar.dart';

class Profiltab extends StatelessWidget {
  const Profiltab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Profil'),
      body: Center(child: Text('Bienvenue sur la page de profil')),
    );
  }
}
