import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_flutter/presentation/ui/admin_screen/add_products/add_phone/add_phone_screen.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_in/sign_in_screen.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_up/sign_up_screen.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/home_screen.dart';
import 'package:shop_app_flutter/presentation/ui/screens/splash/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        HomeScreen.routeName:(context)=> HomeScreen(),
        SignUpScreen.routeName:(context)=> SignUpScreen(),
        SignInScreen.routeName:(context)=>const SignInScreen(),
        AddPhoneScreen.routeName:(context)=> AddPhoneScreen(),
      },
    );
  }
}