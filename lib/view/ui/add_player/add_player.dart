import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:my_crud_app/view/shared/widgets/cutomized_text_form.dart';
import 'package:my_crud_app/view/shared/widgets/cutom_button.dart';
import 'package:my_crud_app/view/ui/add_user_success/add_user_success_showmodal.dart';
import 'package:my_crud_app/view/ui/home/home.dart';

class AddPlayer extends StatefulWidget {
  const AddPlayer({Key? key}) : super(key: key);

  @override
  State<AddPlayer> createState() => _AddPlayerState();
}

class _AddPlayerState extends State<AddPlayer> {
  TextEditingController name = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
            CustomizedTextForm(
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
                      return const SucessModal(text: 'User added successfully');
                    });
              },
              child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: CustomButton(
                    title: 'Add player',
                  )),
            )
          ],
        ),
      )),
    );
  }
}
