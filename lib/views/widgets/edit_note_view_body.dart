

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:  const [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
            text: 'Edit Notes',
            icon: Icons.done,
          ),
          SizedBox(
            height: 40,
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

          ),
        ],
      ),
    );
  }
}
