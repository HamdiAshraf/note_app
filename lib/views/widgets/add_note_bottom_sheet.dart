

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';


import 'add_note_form_state.dart';


class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  MediaQuery.of(context).viewInsets,
      child:  SingleChildScrollView(
        child: BlocConsumer(
            listener: (BuildContext context, Object? state) {
              if(state is AddNoteSuccess){
                Navigator.pop(context);
              }else if(state is AddNoteFailure){
                print('Failed');
              }
            },


            builder: (BuildContext context, state) {
              return ModalProgressHUD(

                  inAsyncCall: state is AddNoteLoading ?true:false,
              child: const AddNoteFormState());
            },

             ),
      ),
    );
  }
}





