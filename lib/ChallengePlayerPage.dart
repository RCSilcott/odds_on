import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:odds_on/numberSelectPage.dart';

class ChallengePlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Text('You odds on Player 1 to: '),
      const TextField(),
      ButtonBar(
        children: <Widget>[
          const BackButton(),
          FloatingActionButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const NumberSelectPage())))
                  })
        ],
      )
    ]));
  }
}
