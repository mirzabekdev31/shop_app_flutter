import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_flutter/data/models/user_model.dart';
import 'package:shop_app_flutter/domain/repository/auth_repository/sign_up_repository/impl/sign_up_repository_impl.dart';
import 'package:shop_app_flutter/presentation/blocs/auth_bloc/sign_up_bloc/sign_up_bloc.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_in/widgets/login_btn.dart';
import 'package:shop_app_flutter/presentation/ui/screens/auth/sign_in/widgets/text_fields.dart';
import 'package:shop_app_flutter/presentation/ui/screens/home/home_screen.dart';
import 'package:shop_app_flutter/utils/constants/app_colors.dart';
import 'package:shop_app_flutter/utils/size_config.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = "sign_up";

  SignUpScreen({Key? key}) : super(key: key);
  final SignUpRepositoryImpl signUpRepositoryImpl = SignUpRepositoryImpl();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: BlocProvider<SignUpBloc>(
        create: (context) => SignUpBloc(signUpRepositoryImpl),
        child: BlocConsumer<SignUpBloc, SignUpState>(
          listener: (context, state) {
            if (state.status == Status.fail) {
              final snackBar = SnackBar(content: Text(state.message));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }else if(state.status==Status.success){
              Navigator.pushNamed(context,HomeScreen.routeName);
            }
          },
          builder: (context, state) {
            if(state.status==Status.loading){
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if(state.status==Status.initial){
              return Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.calculateVertical(36),
                    ),
                    Container(
                      height: SizeConfig.calculateVertical(76),
                      width: SizeConfig.calculateHorizontal(76),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.loginBtnColor),
                      child: const Center(
                        child: Text(
                          "E",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.calculateVertical(128),
                    ),
                    const Text("Login to e-Shop"),
                    SizedBox(
                      height: SizeConfig.calculateVertical(44),
                    ),
                    SignUpTextFields(
                      hintText: "email",
                      icon: Icons.person,
                      controller: nameController,
                    ),
                    SizedBox(
                      height: SizeConfig.calculateVertical(24),
                    ),
                    SignUpTextFields(
                      hintText: "email",
                      icon: Icons.email_outlined,
                      controller: emailController,
                    ),
                    SizedBox(
                      height: SizeConfig.calculateVertical(24),
                    ),
                    SignUpTextFields(
                      hintText: 'password',
                      icon: Icons.password,
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: SizeConfig.calculateVertical(24),
                    ),
                    const Text("Forgot Password?"),
                    SizedBox(
                      height: SizeConfig.calculateVertical(24),
                    ),
                    LoginBtn(function: () {
                      BlocProvider.of<SignUpBloc>(context).add(
                          SignUpSuccess(name: nameController.text, email: emailController.text, password: passwordController.text)
                      );
                    }),
                    SizedBox(
                      height: SizeConfig.calculateVertical(205),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don’t have an account?"),
                          TextButton(onPressed: () {}, child: const Text(
                              "Sign In"))
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

/*
Center(
        child: ElevatedButton(
          onPressed: (){
            signUpRepositoryImpl.signUp(UserModel(name:"Odilbek", email:"odilbek@gmail.com",password: "odilbek"));
          }, child: const Text("Click Me"),
        ),
      ),
 */
