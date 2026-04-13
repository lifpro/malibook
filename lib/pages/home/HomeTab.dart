import 'package:flutter/material.dart';
import 'package:malibook/widget/ui/MyAppBar.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Accueil'),
      body: Center(
        child: TextButton(
          onPressed: () {
            print(' vous venez de cliquer sur le bouton Commencer');
          },
          child: Text('Commencer'),
        ),
      ),
    );
  }
}
