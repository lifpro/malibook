import 'package:flutter/material.dart';
import 'package:malibook/widget/ui/MyAppBar.dart';

class CatalogTab extends StatelessWidget {
  const CatalogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Catalogue'),
      body: Center(child: Text('Bienvenue sur la page de catalogue')),
    );
  }
}
