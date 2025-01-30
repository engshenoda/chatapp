part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email;
  final String passwprd;

  LoginEvent({required this.email, required this.passwprd});

}

class RegisterEvent extends AuthEvent {}
