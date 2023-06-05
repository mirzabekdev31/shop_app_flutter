import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TexFields extends StatelessWidget {
  TextEditingController controller;
  String hintext;

   TexFields({Key? key,required this.controller,required this.hintext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintext,
        border: OutlineInputBorder()
      ),
    );
  }
}
