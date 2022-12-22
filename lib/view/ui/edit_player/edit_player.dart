import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_crud_app/model/player_model.dart';

import 'package:my_crud_app/view/shared/widgets/cutomized_text_form.dart';
import 'package:my_crud_app/view/shared/widgets/cutom_button.dart';
import 'package:my_crud_app/view/ui/add_user_success/add_user_success_showmodal.dart';
import 'package:my_crud_app/view/ui/home/home.dart';
import 'package:provider/provider.dart';

import '../../../controller/player_controller.dart';

class EditPlayer extends StatefulWidget {
  final Player player;
  const EditPlayer({Key? key, required this.player}) : super(key: key);

  @override
  State<EditPlayer> createState() => _EditPlayerState();
}

class _EditPlayerState extends State<EditPlayer> {
  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController position = TextEditingController();
  TextEditingController salary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formstate = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Image.asset("assets/images/back.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AutoSizeText(
              "Edit ${widget.player.name}!",
              maxLines: 1,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: formstate,
              child: Column(
                children: [
                  CustomizedTextForm(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      controller: name,
                      title: "${widget.player.name}",
                      iconPath: "assets/images/profile.png"),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomizedTextForm(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "This field is required";
                        }
                        ;
                        if (int.tryParse(text) == null) {
                          return 'Only numbers are allowed';
                        }
                        return null;
                      },
                      textInputType: TextInputType.number,
                      controller: id,
                      title: "${widget.player.id}",
                      iconPath: "assets/images/id.png"),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomizedTextForm(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "This field is required";
                        }
                        return null;
                      },
                      controller: position,
                      title: "${widget.player.position}",
                      iconPath: "assets/images/position.png"),
                  const SizedBox(
                    height: 8,
                  ),
                  CustomizedTextForm(
                      validator: (text) {
                        if (text!.isEmpty) {
                          return "This field is required";
                        }
                        ;
                        if (int.tryParse(text) == null) {
                          return 'Only numbers are allowed';
                        }
                        return null;
                      },
                      textInputType: TextInputType.number,
                      controller: salary,
                      title: "${widget.player.salary}",
                      iconPath: "assets/images/salary.png"),
                  const SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
            Consumer<PlayerController>(
              builder: (context, value, child) => GestureDetector(
                onTap: () {
                  value.updatePlayer(
                      widget.player,
                      Player(
                          id: int.parse(id.text),
                          name: name.text,
                          position: position.text,
                          salary: int.parse(salary.text)));
                  Navigator.pop(context);
                },
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: CustomButton(
                      title: 'Edit player',
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
