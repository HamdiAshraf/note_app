

import 'package:flutter/material.dart';


import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  MediaQuery.of(context).viewInsets,
      child: const SingleChildScrollView(
        child: AddNoteFormState(),
      ),
    );
  }
}

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

  CustomButton(
    text: 'Add',
    onTap: (){
        if(formKey.currentState!.validate()){
          formKey.currentState!.save();
        }else{
          setState(() {
            autovalidateMode=AutovalidateMode.always;
          });
        }
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






