import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  Future<void> registerUser() async {
    emit(SignUpLoading());

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.text, password: password.text);
      emit(SignUpSuccess());
    } on FirebaseAuthException catch (ex) {
      if (ex.code == 'weak-password') {
        emit(SignUpFailure(errMessage: 'weak-password'));
      } else if (ex.code == 'email-already-in-use') {
        emit(SignUpFailure(errMessage: 'email-already-in-use'));
      }
    } catch (e) {
      emit(SignUpFailure(errMessage: 'there is an error please try again'));
    }
  }

  // Future<void> loginUser() async {
  //   emit(LoginLoading());

  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: email.text, password: password.text);
  //     emit(LoginSuccess());
  //   } on FirebaseAuthException catch (ex) {
  //     if (ex.code == 'user-not-found') {
  //       emit(LoginFailure(errMessage: 'user-not-found'));
  //     } else if (ex.code == 'wrong-password') {
  //       emit(LoginFailure(errMessage: 'wrong-password'));
  //     }
  //   } catch (_) {
  //     emit(LoginFailure(errMessage: 'something is wrong'));
  //   }
  // }
}
