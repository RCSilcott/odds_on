import 'package:flutter/material.dart';
import 'package:odds_on/ChallengePlayerPage.dart';

import 'Models/group.dart';
import 'Models/player.dart';

class GroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var group = createGroup();

    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemCount: group.players.length,
      itemBuilder: (context, index) => Card(
        elevation: 6,
        margin: const EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Text(group.players[index].name.toString()),
          ),
          title: Text(group.players[index].name),
          trailing: const Icon(Icons.add_a_photo),
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChallengePlayerPage()))
          },
        ),
      ),
    )));
  }
}

createGroup() {
  var group1player1 = Player();
  group1player1.name = 'Player 1';

  var group1player2 = Player();
  group1player2.name = 'Player 2';

  var group1player3 = Player();
  group1player3.name = 'Player 3';

  var group1 = Group();
  group1.name = 'group1';
  group1.players.add(group1player1);
  group1.players.add(group1player2);
  group1.players.add(group1player3);

  return group1;
}
