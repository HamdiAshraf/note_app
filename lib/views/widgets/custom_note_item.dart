import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/views/edit_note_view.dart';



class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return  const EditNoteView();
          }));
        },
        child: Container(
          padding: const EdgeInsets.only(
            top: 32,
            left: 24,
            bottom: 24,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffFFCD79),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {},
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                  ),
                ),
                subtitle: const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    'Build your Career with Hamdi Ashraf',
                    style: TextStyle(color: Color(0xffAD7F43), fontSize: 16),
                  ),
                ),
                trailing:

                   const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,

                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 24,
                    ),
                    child: Text(
                      'May 21,2023',
                      style: TextStyle(color: Color(0xffAD7F43), fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  }
}
