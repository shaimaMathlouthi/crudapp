import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsets.only(top: 20, bottom: 20, left: 101, right: 101),
        height: 63,
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0x797BC5FA),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(121, 2, 131, 223),
          ),
        ));
  }
}
