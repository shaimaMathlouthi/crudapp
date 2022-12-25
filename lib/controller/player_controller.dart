import 'package:flutter/material.dart';
import 'package:my_crud_app/controller/res_provider.dart';

import '../model/player_model.dart';

class PlayerController extends ChangeNotifier {
  List<Player> players = [];
  Player? searchedPlayer;
  final RestProvider restProvider = RestProvider();

  void addPlayer(Player player) async {
    await restProvider.createJoueur(player);
    notifyListeners();
  }

  void deletePlayer(Player player) async {
    await restProvider.deleteUser(player.id!);
    notifyListeners();
  }

  void updatePlayer(Player oldPlayer, Player newPlayer) {
    restProvider.editJoueur(oldPlayer.id!, newPlayer);

    notifyListeners();
  }

  void searchPlayer(int id) async {
    searchedPlayer = await restProvider.chercherJoueur(id);
    notifyListeners();
  }
  // void searchPlayer(String id) {
  //   final suggestions = players.where((element) {
  //     final playerName = element.id.toString().toLowerCase();
  //     final input = id.toLowerCase();
  //     return playerName.contains(input);
  //   }).toList();

  //   searchedPlayers = suggestions;
  //   notifyListeners();
  // }
}
