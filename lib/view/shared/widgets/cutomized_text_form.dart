import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomizedTextForm extends StatelessWidget {
  final String title;
  final String iconPath;
  TextInputType? textInputType;

  String? Function(String?)? validator;
  TextEditingController? controller = TextEditingController();

  CustomizedTextForm(
      {Key? key,
      required this.title,
      required this.iconPath,
      required this.controller,
      this.textInputType,
      this.validator})
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
              child: SizedBox(
                height: 8.h.clamp(65, 95),
                child: Card(
                  elevation: 0,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(fontSize: 14.sp.clamp(16, 24)),
                        keyboardType: textInputType ?? TextInputType.name,
                        controller: controller,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            hintText: title,
                            errorStyle:
                                TextStyle(fontSize: 15.sp.clamp(18, 25)),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle:
                                TextStyle(fontSize: 14.sp.clamp(16, 24))),
                        validator: validator,
                      ),
                    ),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
