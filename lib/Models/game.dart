import 'package:odds_on/Models/player.dart';

class GameModel {
  String? id;
  Player? challengerPlayer;
  int challengerPlayerNumber = 0;
  String? challengeQuestion = "";
  Player? challengedPlayer;
  int challengedPlayerNumber = 0;
  DateTime? dateCreated;
}
