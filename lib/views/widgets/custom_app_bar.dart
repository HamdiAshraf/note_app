

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, required this.icon}) ;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(text,
        style: const TextStyle(fontSize: 32),
        ),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(0.05),

          ),
          child: IconButton(
            onPressed: () {  },

            icon:  Icon(icon,size: 28,),


          ),
        ),
      ],
    );
  }
}
