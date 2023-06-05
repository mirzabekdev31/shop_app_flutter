import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/home_screen.dart';
import 'package:shop_app_flutter/utils/constants/app_colors.dart';

import '../auth/sign_in/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushNamed(context, SignUpScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        color: AppColors.splashBackground,
        child: Center(
          child: SvgPicture.asset("assets/images/splash.svg"),
        ),
      )
    );
  }
}