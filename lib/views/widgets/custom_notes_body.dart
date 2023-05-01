



import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

import 'custom_app_bar.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          SizedBox(height: 45,),
          CustomAppBar(),
          CustomNoteItem(
            itemColor:const Color(0xffFFCD79) ,
          ),


        ],
      ),
    );
  }
}
//FFCD79
//E7E895
//76D6EE