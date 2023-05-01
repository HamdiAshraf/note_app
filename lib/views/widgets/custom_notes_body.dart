



import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class CustomNotesBody extends StatelessWidget {
  const CustomNotesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const[
          SizedBox(height: 45,),
          CustomAppBar(),
        ],
      ),
    );
  }
}
