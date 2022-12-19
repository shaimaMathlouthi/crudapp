import 'package:flutter/material.dart';

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
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Add a new player to your Team !",
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
            Card(
              elevation: 30,
              shadowColor: const Color.fromARGB(31, 50, 50, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              margin: const EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  height: 57,
                  width: 64,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(121, 123, 197, 250),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14))),
                  child: Image.asset(
                    "assets/images/profile.png",
                    color: const Color.fromARGB(121, 2, 131, 223),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Full name",
                      hintStyle:
                          TextStyle(fontSize: 13, color: Color(0xFFCACACA)),
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              elevation: 30,
              shadowColor: const Color.fromARGB(31, 50, 50, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              margin: const EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  height: 57,
                  width: 64,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(121, 123, 197, 250),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14))),
                  child: Image.asset(
                    "assets/images/id.png",
                    color: const Color.fromARGB(121, 2, 131, 223),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Id",
                      hintStyle:
                          TextStyle(fontSize: 13, color: Color(0xFFCACACA)),
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              elevation: 30,
              shadowColor: const Color.fromARGB(31, 50, 50, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              margin: const EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  height: 57,
                  width: 64,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(121, 123, 197, 250),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14))),
                  child: Image.asset(
                    "assets/images/position.png",
                    color: const Color.fromARGB(121, 2, 131, 223),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "position",
                      hintStyle:
                          TextStyle(fontSize: 13, color: Color(0xFFCACACA)),
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 8,
            ),
            Card(
              elevation: 30,
              shadowColor: const Color.fromARGB(31, 50, 50, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              margin: const EdgeInsets.all(10),
              child: Row(children: [
                Container(
                  height: 57,
                  width: 64,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(121, 123, 197, 250),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          bottomLeft: Radius.circular(14))),
                  child: Image.asset(
                    "assets/images/salary.png",
                    color: const Color.fromARGB(121, 2, 131, 223),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "salary",
                      hintStyle:
                          TextStyle(fontSize: 13, color: Color(0xFFCACACA)),
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      // ignore: prefer_const_constructors
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
              child: Container(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 101, right: 101),
                height: 63,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(121, 123, 197, 250),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Text(
                  "Add player",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(121, 2, 131, 223),
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
