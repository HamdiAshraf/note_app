



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
          SizedBox(height: 50,),
          CustomAppBar(),
          // CustomNoteItem(
          //   itemColor: const Color(0xffFFCD79) ,
          // ),
          Expanded(child: NotesListView()),


        ],
      ),
    );
  }
}


