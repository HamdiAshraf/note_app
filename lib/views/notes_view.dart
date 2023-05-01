



import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:

          CustomNotesBody(),

      );

  }

  }