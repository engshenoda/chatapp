part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}



class SignUpInitial extends AuthState {}

class SignUpSuccess extends AuthState {}

class SignUpLoading extends AuthState {}

class SignUpFailure extends AuthState {
  final String errMessage;
  SignUpFailure({required this.errMessage});
}


final class AuthInitial extends AuthState {}

class LoginSuccess extends AuthState {}

class LoginLoading extends AuthState {}

class LoginFailure extends AuthState {
  final String errMessage;
  LoginFailure({required this.errMessage});
}
