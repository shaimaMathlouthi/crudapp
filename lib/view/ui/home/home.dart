import 'package:flutter/material.dart';
import 'package:my_crud_app/view/ui/add_player/add_player.dart';
import 'package:my_crud_app/view/shared/widgets/custom_text_form.dart';
import 'package:my_crud_app/view/ui/widgets/player_card.dart';
import 'package:my_crud_app/view/shared/widgets/cutom_button.dart';
import 'package:provider/provider.dart';

import '../../../controller/player_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SingleChildScrollView(
            child: Padding(
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
                  const SizedBox(
                    height: 20,
                  ),
                  //...List.generate(4, (index) => const PlayerCard()),
                  Consumer<PlayerController>(
                      builder: (context, value, child) => ListView.builder(
                            itemCount: value.players.length,
                            itemBuilder: (context, index) => PlayerCard(),
                          )),
                  const SizedBox(
                    height: 200,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddPlayer()),
                  );
                },
                child: const CustomButton(
                  title: 'Add player',
                )),
          )
        ],
      ),
    );
  }
}
