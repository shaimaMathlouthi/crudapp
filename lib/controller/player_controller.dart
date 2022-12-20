import 'package:flutter/material.dart';

import '../model/player_model.dart';

class PlayerController extends ChangeNotifier {
  List<Player> players = [];

  void addPlayer(Player player) {
    players.add(player);
    notifyListeners();
  }

  void deletePlayer() {}

  void updatePlayer() {}

  void searchPlayer() {}
}
