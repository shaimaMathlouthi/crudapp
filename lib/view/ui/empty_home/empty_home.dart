import 'package:flutter/material.dart';
import 'package:my_crud_app/view/ui/add_player/add_player.dart';
import 'package:my_crud_app/view/shared/widgets/custom_text_form.dart';
import 'package:my_crud_app/view/shared/widgets/cutom_button.dart';

class EmptyHome extends StatefulWidget {
  const EmptyHome({Key? key}) : super(key: key);

  @override
  State<EmptyHome> createState() => _EmptyHomeState();
}

class _EmptyHomeState extends State<EmptyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    "Welcome",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 3,
                    shadowColor: const Color(0x1F323232),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    child: Row(children: [
                      Container(
                        width: 65,
                        decoration: const BoxDecoration(
                            color: Color(0x797BC5FA),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(14),
                                bottomLeft: Radius.circular(14))),
                        child: Image.asset(
                          "assets/images/search.png",
                          color: const Color(0x790283DF),
                        ),
                      ),
                      Expanded(
                        child: CustomCardTextForm(
                          hintText: 'Search for a footballer...',
                        ),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Image.asset("assets/images/empty.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Your Team is empty ! Add your first player",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(121, 139, 139, 139)))
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Positioned(
              bottom: 40,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPlayer()),
                    );
                  },
                  child: const CustomButton(
                    title: 'Add player',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
