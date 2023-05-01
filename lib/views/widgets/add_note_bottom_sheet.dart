

import 'package:flutter/material.dart';


import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(

children: const [
  SizedBox(
    height: 24,
  ),
   CustomTextField(
        text: 'Title',
   ),
  SizedBox(
    height: 10,
  ),


   CustomTextField(
           text: 'Content',
     maxLines: 5,
     height: 5,
    ),

  SizedBox(
    height: 60,
  ),

  CustomButton(text: 'Add',),
  SizedBox(
    height: 20,
  ),

],
        ),
      ),
    );
  }
}






