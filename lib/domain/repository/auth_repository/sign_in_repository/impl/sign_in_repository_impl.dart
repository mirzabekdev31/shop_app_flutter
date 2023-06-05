import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app_flutter/domain/repository/auth_repository/sign_in_repository/sign_in_repository.dart';

class SignInRepoImpl extends SignInRepository {
  final FirebaseAuth auth=FirebaseAuth.instance;
  var _status = AuthStatus.NOT_SIGN_IN;

  @override
  void signIn(email,password) {
    auth.signInWithEmailAndPassword(email: email, password: password).then((value) => (){
      _status=AuthStatus.COMPLETED;
    });
  }
}

enum AuthStatus { NOT_SIGN_IN, LOADING, COMPLETED, ERROR }
