import 'package:flutter/material.dart';

class LosePage extends StatelessWidget {
  const LosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Text('You lose this round. Unlucky'),
        BackButtonIcon(),
      ],
    ));
  }
}
