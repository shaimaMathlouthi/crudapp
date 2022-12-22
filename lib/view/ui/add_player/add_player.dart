import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:my_crud_app/model/player_model.dart';

import 'package:my_crud_app/view/shared/widgets/cutomized_text_form.dart';
import 'package:my_crud_app/view/shared/widgets/cutom_button.dart';
import 'package:my_crud_app/view/ui/add_user_success/add_user_success_showmodal.dart';
import 'package:my_crud_app/view/ui/home/home.dart';
import 'package:provider/provider.dart';

import '../../../controller/player_controller.dart';

class AddPlayer extends StatefulWidget {
  const AddPlayer({Key? key}) : super(key: key);

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
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
                      title: "Full name",
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
                      title: "ID",
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
                      title: "Position",
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
                      title: "Salary",
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
                  if (formstate.currentState!.validate()) {
                    value.addPlayer(Player(
                        id: int.parse(id.text),
                        name: name.text,
                        position: position.text,
                        salary: int.parse(salary.text)));

                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (context) {
                          return const SucessModal(
                              text: 'User added successfully');
                        });
                  }
                  ;
                },
                child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: CustomButton(
                      title: 'Add player',
                    )),
              ),
            )
          ],
        ),
      )),
    );
  }
}
