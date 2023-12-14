import 'package:flutter/material.dart';

class NumberSelectPage extends StatelessWidget {
  const NumberSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    //int numberSelected = 0;
    return Scaffold(
        body: Column(
      children: [
        for (int i = 1; i <= 10; i++)
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            for (int j = 1; j <= 10; j++)
              Container(
                constraints: const BoxConstraints(maxHeight: 40, maxWidth: 40),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(90)),
                alignment: Alignment.center,
                child: Text(i.toString()),
              )
          ])
      ],
    ));
  }
}
