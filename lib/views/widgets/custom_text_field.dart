import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
 const CustomTextField({super.key, required this.text ,  this.maxLines=1, this.onSaved}) ;
  final String text;
  final int maxLines;

final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField (
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty??true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,

      decoration: InputDecoration(

        hintText: text,
        hintStyle:  const TextStyle(
          color: kPrimaryColor,

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
