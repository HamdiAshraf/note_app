


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
   CustomNoteItem({super.key, this.itemColor}) ;
  Color? itemColor ;
  @override
  Widget build(BuildContext context) {
    return
       Container(
          padding:const EdgeInsets.only(
            top: 32,
            left: 24,
            bottom: 24,

          ),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(16),
           color: itemColor,
         ),
         child: Column(

           crossAxisAlignment: CrossAxisAlignment.start,
           children:  [
             // const SizedBox(
             //   height: 30,
             // ),
             ListTile(
               onTap: (){},
               title:  const Text('Flutter tips',
                       style: TextStyle(fontSize: 28,
                         color: Colors.black,

                       ),

             ),


             subtitle: const Padding(
               padding: EdgeInsets.only(top: 16),
               child: Text('Build your Career with Hamdi Ashraf',
    style: TextStyle(color:Color(0xffAD7F43),fontSize: 16),
    ),
             ),

             trailing: IconButton(
              onPressed: (){},
               icon: const Icon(FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,),),



          ),
             const SizedBox(
               height: 10,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: const [
                 Padding(
                   padding: EdgeInsets.only(right: 24,),
                   child: Text('May 21,2023',
                     style: TextStyle(color: Color(0xffAD7F43),fontSize: 14),
                   ),
                 ),
             ],),


         ],
         ),
       );

  }
}
