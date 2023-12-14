import 'package:flutter/material.dart';

class WinPage extends StatelessWidget {
  const WinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Text('You won this round. Congratulations'),
        BackButtonIcon(),
      ],
    ));
  }
}
