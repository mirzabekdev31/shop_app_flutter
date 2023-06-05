import 'package:flutter/material.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_in/widgets/login_btn.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_in/widgets/text_fields.dart';
import 'package:shop_app_flutter/utils/constants/app_colors.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = 'sign_in';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SignUpTextFields(hintText: "email",icon: Icons.email_outlined, controller: null,),
            // const SizedBox(height: 24,),
            // SignUpTextFields(hintText: 'password',icon: Icons.password, controller: null,),
            // SizedBox(height: 70,),
            // LoginBtn(function: (){})
          ],
        ),
      ),
    );
  }
}
