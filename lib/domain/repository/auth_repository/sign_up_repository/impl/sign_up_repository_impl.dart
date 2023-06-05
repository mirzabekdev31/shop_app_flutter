import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app_flutter/data/models/user_model.dart';
import 'package:shop_app_flutter/domain/repository/auth_repository/sign_up_repository/sign_up_repository.dart';


class SignUpRepositoryImpl extends SignUpRepository {
  final FirebaseAuth auth=FirebaseAuth.instance;

  @override
  void createUser(UserModel user) async{
    final CollectionReference userCollections =
    FirebaseFirestore.instance.collection('users');
    try {
      final userDoc = userCollections.doc(user.id!);
      await userDoc.set(user.toJson());
    } catch (e) {
      print("user-collection-exception: $e");
    }
  }

  signIn(email, pass) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass)
          .then((value) {
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {
      }
    } catch (e) {
    }
  }

  @override
  bool signUp(UserModel user) {
    try{
      auth.createUserWithEmailAndPassword(email: user.email!, password: user.password!).then((value) => (){
        UserModel userModel=
        UserModel(id:value.user?.uid,
            name:user.name,
            email:user.email,
            password:user.password);
        createUser(userModel);
      });
      return true;
    }on FirebaseAuthException catch(e){
      print("Error ===================== ${e.message}");
      return false;
    }
  }

}
