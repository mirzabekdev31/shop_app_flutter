import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app_flutter/data/models/user_model.dart';
import 'package:shop_app_flutter/domain/repository/auth_repository/sign_up_repository/impl/sign_up_repository_impl.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpRepositoryImpl signUpRepositoryImpl;


  SignUpBloc(this.signUpRepositoryImpl) : super(const SignUpState()) {
    on<SignUpStartedEvent>((event, emit) {
      emit(state.copyWith(status: Status.loading));
    });
    on<SignUpSuccess>((event, emit){
      emit(state.copyWith(status: Status.loading));
        bool isAuth= signUpRepositoryImpl.signUp(UserModel(name: event.name, email: event.email, password: event.password));
        if(isAuth){
          emit(state.copyWith(status: Status.success));
        }else{
          emit(state.copyWith(status: Status.fail));
        }
    });
  }
}
