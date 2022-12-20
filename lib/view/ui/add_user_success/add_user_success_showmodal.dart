import 'package:flutter/material.dart';

class SucessModal extends StatelessWidget {
  final String text;
  const SucessModal({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 10),
      actionsAlignment: MainAxisAlignment.center,
      titlePadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      title: Image.asset(
        "assets/images/tick.png",
        height: 50,
        width: 50,
      ),
      contentPadding: const EdgeInsets.all(30),
      content: Text(text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
    );
  }
}
