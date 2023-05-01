import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
 const CustomTextField({super.key, required this.text ,  this.maxLines=1,this.height=2}) ;
  final String text;
  final int maxLines;
final double ?height;
  @override
  Widget build(BuildContext context) {
    return TextField (

      cursorColor: kPrimaryColor,
      maxLines: maxLines,

      decoration: InputDecoration(

        hintText: text,
        hintStyle:  TextStyle(
          color: kPrimaryColor,
            height: height??5,
        ),
        isDense: true,
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
