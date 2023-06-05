import 'package:shop_app_flutter/data/models/user_model.dart';

abstract class SignUpRepository{
  bool signUp(UserModel user);
  void createUser(UserModel user);
}