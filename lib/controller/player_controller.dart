import 'package:flutter/material.dart';

import '../model/player_model.dart';

class PlayerController extends ChangeNotifier {
  List<Player> players = [];
  List<Player> searchedPlayers = [];

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

  void searchPlayer(String id) {
    final suggestions = players.where((element) {
      final playerName = element.id.toString().toLowerCase();
      final input = id.toLowerCase();
      return playerName.contains(input);
    }).toList();

    searchedPlayers = suggestions;
    notifyListeners();
  }
}
