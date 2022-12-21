import 'package:flutter/material.dart';

import '../model/player_model.dart';

class PlayerController extends ChangeNotifier {
  List<Player> players = [];

  void addPlayer(Player player) {
    players.add(player);
    notifyListeners();
  }

  void deletePlayer(Player player) {
    players.remove(player);
    notifyListeners();
  }

  void updatePlayer(Player oldPlayer, Player newPlayer) {
    oldPlayer.name = newPlayer.name;
    oldPlayer.id = newPlayer.id;
    oldPlayer.position = newPlayer.position;
    oldPlayer.salary = newPlayer.salary;

    notifyListeners();
  }

  void searchPlayer(int id) {}
}
