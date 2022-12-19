import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_crud_app/view/shared/widgets/custom_text_form.dart';
import 'package:my_crud_app/view/shared/widgets/cutomized_text_form.dart';

class AddPlayer extends StatefulWidget {
  const AddPlayer({Key? key}) : super(key: key);

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const AutoSizeText(
              "Add a new player to your Team !",
              maxLines: 1,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "To add a new player your equipe simply fill up this form",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(121, 120, 120, 120)),
            ),
            const SizedBox(
              height: 13,
            ),
            const CustomizedTextForm(
                title: "Full name", iconPath: "assets/images/profile.png"),
            const SizedBox(
              height: 8,
            ),
            const CustomizedTextForm(
                title: "ID", iconPath: "assets/images/id.png"),
            const SizedBox(
              height: 8,
            ),
            const CustomizedTextForm(
                title: "Position", iconPath: "assets/images/position.png"),
            const SizedBox(
              height: 8,
            ),
            const CustomizedTextForm(
                title: "Salary", iconPath: "assets/images/salary.png"),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        titlePadding: const EdgeInsets.all(10),
                        title: Image.asset(
                          "assets/images/tick.png",
                          height: 50,
                          width: 50,
                        ),
                        contentPadding: const EdgeInsets.only(
                            left: 40, right: 40, bottom: 20),
                        content: const Text("Player added sucessufully",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      );
                    });
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(121, 123, 197, 250),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Center(
                    child: Text(
                      "Add player",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(121, 2, 131, 223),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
