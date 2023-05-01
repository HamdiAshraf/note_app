

import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(

children: [
  const SizedBox(
    height: 24,
  ),
   CustomTextField(
     'Title'
   ),
  const SizedBox(
    height: 10,
  ),

  SizedBox(
    height: 200,
    child: CustomTextField(
        'Content',
    ),
  ),
],
      ),
    );
  }
}


