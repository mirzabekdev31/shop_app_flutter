import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/utils/size_config.dart';

class SignUpTextFields extends StatelessWidget {
  String hintText='';
  IconData icon;
  TextEditingController controller;
  SignUpTextFields({Key? key,required this.hintText,required this.icon,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: const EdgeInsets.only(left: 16,right: 16),
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      height: SizeConfig.calculateVertical(64),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(
              0.0,
              2.0,
            ),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
