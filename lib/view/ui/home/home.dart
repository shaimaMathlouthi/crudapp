import 'package:flutter/material.dart';
import 'package:my_crud_app/view/shared/widgets/cutomized_text_form.dart';
import 'package:my_crud_app/view/ui/add_player/add_player.dart';

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
  TextEditingController search = TextEditingController();

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
                  Consumer<PlayerController>(
                    builder: (context, value, child) => CustomizedTextForm(
                      iconPath: "assets/images/search.png",
                      title: 'Search for a footballer...',
                      controller: search,
                      onchanged: (a) => value.searchPlayer(a!),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<PlayerController>(
                      builder: (context, value, child) => value.players.isEmpty
                          ? Column(
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Image.asset("assets/images/empty.png"),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                    "Your Team is empty ! Add your first player",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(121, 139, 139, 139)))
                              ],
                            )
                          : ListView.builder(
                              padding: const EdgeInsets.all(0),
                              shrinkWrap: true,
                              itemCount: search.text.isEmpty
                                  ? value.players.length
                                  : value.searchedPlayers.length,
                              itemBuilder: (context, index) => PlayerCard(
                                  player: search.text.isEmpty
                                      ? value.players[index]
                                      : value.searchedPlayers[index]),
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
