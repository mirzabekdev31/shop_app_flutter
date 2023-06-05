import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/utils/constants/app_colors.dart';
import 'package:shop_app_flutter/utils/constants/strings.dart';

class LoginBtn extends StatelessWidget {

 final Function function;

  const LoginBtn({Key? key,required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        function.call();
      },
      child: Container(
        height: 64,
        width: double.infinity,
        margin: const EdgeInsets.only(left: 16,right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.loginBtnColor
        ),
        child: Center(
          child: Text(AppStrings.LoginBnt,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
