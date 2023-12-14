import 'package:flutter/material.dart';
import 'package:odds_on/Models/player.dart';
import 'package:odds_on/groupPage.dart';

import 'Models/group.dart';

class GroupListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dummyList = createGroups();

    // TODO: implement build
    return Scaffold(
        body: SafeArea(
            child: ListView.builder(
      itemCount: dummyList.length,
      itemBuilder: (context, index) => Card(
        elevation: 6,
        margin: const EdgeInsets.all(10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
            child: Text(dummyList[index]["id"].toString()),
          ),
          title: Text(dummyList[index]["title"]),
          subtitle: Text(dummyList[index]["subtitle"]),
          trailing: const Icon(Icons.add_a_photo),
          onTap: () => {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => GroupPage()))
          },
        ),
      ),
    )));
  }
}

createGroups() {
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

  var group2 = Group();
  group2.name = 'group2';

  var group3 = Group();
  group3.name = 'group3';

  var group4 = Group();
  group4.name = 'group4';

  var groupList = [group1, group2, group3];

  return groupList;
}
