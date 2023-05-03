
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit(super.initialState);


  addNote(NoteModel note){

    emit(AddNoteLoading());
 try{
   var notesBox=  Hive.box<NoteModel>(kNotesBox);
   notesBox.add(note);
   emit(AddNoteSuccess());
 }catch(e){
   emit(AddNoteFailure(e.toString()));
 }

  }

}