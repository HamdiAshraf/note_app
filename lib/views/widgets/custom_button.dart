import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.text}) ;
  final String text;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 60,

        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}