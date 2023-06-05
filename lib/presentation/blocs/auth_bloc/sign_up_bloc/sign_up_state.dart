part of 'sign_up_bloc.dart';


class SignUpState {
  final Status status;
  final String message;

  const SignUpState({
    this.status = Status.initial,
    this.message = "",
  });

  SignUpState copyWith({
    Status? status,
    String? message,
  }) {
    return SignUpState(
      status: status ?? this.status,
      message: message ?? this.message,
    );
  }
}


enum Status { initial, fail, loading, success }