


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_state.dart';

import '../../models/note_model.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({
    super.key,
  });

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  final GlobalKey<FormState>formKey=GlobalKey();

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String ?title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 16),
        child: Column(

          children:  [
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              text: 'Title',
              onSaved: (value){
                title=value;
              },
            ),
            const SizedBox(
              height: 10,
            ),


            CustomTextField(
              text: 'Content',
              maxLines: 5,

              onSaved: (value){
                subTitle=value;
              },
            ),

            const SizedBox(
              height: 60,
            ),

            BlocBuilder<AddNoteCubit,AddNoteState>(
              builder: (context,state){

                return CustomButton(
                  isLoading: state is AddNoteLoading?true:false,
                  text: 'Add',
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      formKey.currentState!.save();
                      var noteModel =NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);

                    }else{
                      setState(() {
                        autovalidateMode=AutovalidateMode.always;
                      });
                    }
                  },

                );
              },

            ),
            const SizedBox(
              height: 20,
            ),

          ],
        ),
      ),
    );
  }
}

