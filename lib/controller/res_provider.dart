import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:my_crud_app/model/player_model.dart';

class RestProvider extends ChangeNotifier {
  Future<List<Player>> getJoueurs() async {
    final joueurs = <Player>[];
    final response = await http
        .get(Uri.parse("http://10.0.2.2:8080/examen_tp/equipe/joueur"));
    var parsed = json.decode(response.body);

    for (var j in parsed) {
      var joueur = Player.fromJson(j);
      joueurs.add(joueur);
    }

    return joueurs;
  }

  Future createJoueur(Player player) {
    return http.post(Uri.parse('http://10.0.2.2:8080/examen_tp/equipe/joueur'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "id": player.id,
            "name": player.name,
            "position": player.position,
            "salary": player.salary
          },
        ));
  }

  Future editJoueur(int id, Player player) {
    return http.put(
        Uri.parse('http://10.0.2.2:8080/examen_tp/equipe/joueur/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, dynamic>{
            "id": player.id,
            "name": player.name,
            "position": player.position,
            "salary": player.salary
          },
        ));
  }

  Future deleteUser(int id) {
    return http.delete(
      Uri.parse('http://10.0.2.2:8080/examen_tp/equipe/joueur/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  Future<Player?> chercherJoueur(int id) async {
    final Player? player;
    final response = await http
        .get(Uri.parse("http://10.0.2.2:8080/examen_tp/equipe/joueur/$id"));
    if (response.body.isEmpty) {
      return null;
    }

    var parsed = json.decode(response.body);

    var joueur = Player.fromJson(parsed);

    player = joueur;
    return player;
  }
}
