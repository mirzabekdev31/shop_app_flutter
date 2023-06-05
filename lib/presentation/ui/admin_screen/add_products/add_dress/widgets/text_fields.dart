import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  TextEditingController controller;
  String hintext;

  TextFields({Key? key,required this.controller,required this.hintext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
      ),
    );
  }
}
