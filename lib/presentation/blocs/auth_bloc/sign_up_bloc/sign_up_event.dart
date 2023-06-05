part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignUpStartedEvent extends SignUpEvent {}

class SignUpSuccess extends SignUpEvent {
  String name;
  String email;
  String password;

  SignUpSuccess(
      {required this.name, required this.email, required this.password});
}
