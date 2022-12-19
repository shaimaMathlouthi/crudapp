import 'package:flutter/material.dart';

import 'custom_text_form.dart';

class CustomizedTextForm extends StatelessWidget {
  final String title;
  final String iconPath;

  const CustomizedTextForm(
      {Key? key, required this.title, required this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        elevation: 30,
        shadowColor: const Color.fromARGB(31, 50, 50, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        child: Row(children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(121, 123, 197, 250),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      bottomLeft: Radius.circular(14))),
              child: Image.asset(
                iconPath,
                color: const Color.fromARGB(121, 2, 131, 223),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              flex: 8,
              child: CustomCardTextForm(
                hintText: title,
              ))
        ]),
      ),
    );
  }
}
