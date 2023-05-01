



import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/views/widgets/custom_notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:

          const CustomNotesBody(),
      floatingActionButton: FloatingActionButton(

        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context, builder: (context){

            return const AddNoteBottomSheet(

            );
          });
        },
      child: const Icon(Icons.add,

      ),

      ),

      );

  }

  }

