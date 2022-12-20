import 'package:flutter/material.dart';
import 'package:my_crud_app/model/player_model.dart';
import 'package:my_crud_app/view/ui/delete_user/delete_user_showmodel.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({Key? key}) : super(key: key);

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
                const Text(
                  "Ronaldo",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => const DeleteUser());
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
                        color: const Color.fromARGB(255, 244, 47, 47),
                      ),
                    ),
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
                const Text(
                  "#07",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                const Text(
                  "attack",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                const Text(
                  "1200€",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
