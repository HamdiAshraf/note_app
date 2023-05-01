import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(this.text, {super.key}) ;
  String text;
  @override
  Widget build(BuildContext context) {
    return TextField (
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        contentPadding: const EdgeInsets.all(16),

        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({Color ?color}) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:  BorderSide(
              color:color?? Colors.white,

              width: 1.5),

      );
  }
}
