



import 'package:flutter/material.dart';


import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,),
      child: Column(
        children: const [
          SizedBox(height: 60,),
          CustomAppBar(text: 'Notes',icon: Icons.search),

          Expanded(child: NotesListView()),



        ],
      ),
    );
  }
}


