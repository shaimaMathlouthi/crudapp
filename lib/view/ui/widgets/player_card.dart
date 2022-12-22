import 'package:flutter/material.dart';
import 'package:my_crud_app/model/player_model.dart';
import 'package:my_crud_app/view/ui/delete_user/delete_user_showmodel.dart';
import 'package:my_crud_app/view/ui/edit_player/edit_player.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayerCard extends StatelessWidget {
  final Player player;
  const PlayerCard({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 22.h,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        elevation: 30,
        shadowColor: const Color(0x1F323232),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/profile.png",
                  color: Colors.black,
                ),
                const SizedBox(width: 18),
                Text(
                  player.name!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => DeleteUser(player: player));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(31, 254, 167, 167),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Image.asset(
                        "assets/images/delete.png",
                        height: 20,
                        width: 20,
                        color: const Color.fromARGB(255, 244, 47, 47),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditPlayer(
                                player: player,
                              )),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: const Color.fromARGB(31, 254, 167, 167),
                    ),
                    // ignore: prefer_const_constructors
                    child: Padding(
                        padding: const EdgeInsets.all(14),
                        child: const Icon(
                          Icons.edit,
                          size: 20,
                        )),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/id.png",
                  color: Colors.black,
                ),
                const SizedBox(width: 18),
                Text(
                  "#${player.id}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/position.png",
                  color: Colors.black,
                ),
                const SizedBox(width: 18),
                Text(
                  player.position!,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/images/salary.png",
                  color: Colors.black,
                ),
                const SizedBox(width: 18),
                Text(
                  "${player.salary}€",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
