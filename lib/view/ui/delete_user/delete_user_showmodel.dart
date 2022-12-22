import 'package:flutter/material.dart';
import 'package:my_crud_app/model/player_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../controller/player_controller.dart';

class DeleteUser extends StatelessWidget {
  final Player player;
  const DeleteUser({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      actionsAlignment: MainAxisAlignment.center,
      titlePadding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      title: Image.asset(
        "assets/images/info.png",
        height: 50,
        width: 50,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      content: SizedBox(
        height: 20.h,
        child: Column(
          children: [
            const Text("Are you sure you want to delete Ronaldo ?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const SizedBox(
                    height: 50,
                    width: 120,
                    child: Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(121, 2, 131, 223),
                        ),
                      ),
                    ),
                  ),
                ),
                Consumer<PlayerController>(
                  builder: (context, value, child) => InkWell(
                    onTap: () {
                      value.deletePlayer(player);

                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(121, 123, 197, 250),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Delete",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(121, 2, 131, 223),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
